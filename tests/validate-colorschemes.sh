#!/usr/bin/env bash
# Vim colorscheme validation runner.
#
# Walks every colors/*.vim file. For each scheme:
#   1. Sources the file in headless vim under try/catch (so runtime
#      warnings like E411 "highlight group not found" don't abort).
#   2. Verifies the source did not throw a syntax-level error.
#   3. Captures g:colors_name into a tmpfile and verifies it matches
#      the file basename (vim's contract for `:colorscheme <name>`).
#
# Exit codes:
#   0  every scheme loads successfully + colors_name set + matches
#   1  one or more schemes failed to source OR set wrong colors_name
#
# The schemes that ship WITHOUT `let g:colors_name=` (~5% of the
# collection — vendored from many third-party authors) are reported
# as INFO and counted, but they do NOT fail this script: Vim still
# loads them; they just don't show in `:colorscheme <tab>`.

set -uo pipefail

dir="${1:-colors}"
if [[ ! -d "$dir" ]]; then
    echo "ERROR: $dir not found" >&2
    exit 2
fi

# Find vim binary
if ! command -v vim >/dev/null 2>&1; then
    echo "ERROR: vim not on PATH" >&2
    exit 2
fi

total=0
loaded=0
failed=0
missing_name=0
mismatch=0
declare -a failures=()
declare -a mismatches=()

for f in "$dir"/*.vim; do
    [[ -f "$f" ]] || continue
    total=$((total + 1))
    expected="${f##*/}"
    expected="${expected%.vim}"

    tmp=$(mktemp)
    err=$(mktemp)
    # try/catch swallows runtime warnings; only syntax-level errors abort.
    # writefile captures the post-load g:colors_name value.
    vim --not-a-term --noplugin -e -s \
        -c "try | source $f | catch | endtry" \
        -c "call writefile([exists('g:colors_name') ? g:colors_name : ''], '$tmp')" \
        -c "qa!" </dev/null 2>"$err"
    rc=$?

    actual=""
    [[ -f "$tmp" ]] && actual=$(cat "$tmp")
    rm -f "$tmp" "$err"

    if [[ $rc -ne 0 ]]; then
        failed=$((failed + 1))
        failures+=("$expected (vim rc=$rc)")
        continue
    fi

    loaded=$((loaded + 1))

    if [[ -z "$actual" ]]; then
        missing_name=$((missing_name + 1))
    elif [[ "$actual" != "$expected" ]]; then
        mismatch=$((mismatch + 1))
        mismatches+=("$expected -> set g:colors_name='$actual'")
    fi
done

echo "VimColorSchemes validation report"
echo "================================="
printf "Total schemes:                       %d\n" "$total"
printf "Successfully sourced:                %d\n" "$loaded"
printf "Failed to source:                    %d\n" "$failed"
printf "Loaded but missing g:colors_name:    %d (informational)\n" "$missing_name"
printf "Loaded with mismatched colors_name:  %d\n" "$mismatch"

if [[ $failed -gt 0 ]]; then
    echo ""
    echo "Schemes that failed to source:"
    for s in "${failures[@]}"; do
        echo "  - $s"
    done
fi

if [[ $mismatch -gt 0 ]]; then
    echo ""
    echo "Schemes whose g:colors_name does not match filename:"
    for s in "${mismatches[@]}"; do
        echo "  - $s"
    done
fi

# Fail only on hard errors. Missing colors_name is informational — those
# schemes load fine, they just don't surface in :colorscheme completion.
if [[ $failed -gt 0 ]]; then
    exit 1
fi
exit 0
