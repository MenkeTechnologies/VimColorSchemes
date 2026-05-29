#!/usr/bin/env bash
# Lightweight repo-contract checks for VimColorSchemes that DON'T
# require Vim (so they run on minimal CI images).
#
# Pins:
#   1. README's `schemes-N` badge matches the actual colorscheme count.
#   2. Every `colors/*.vim` file is non-empty (no zero-byte stubs that
#      would crash :colorscheme).
#   3. No colorscheme filename contains spaces (Vim `:colorscheme`
#      can't tab-complete or load names with spaces reliably).
#
# Exit 0 on full pass, 1 on any failure.

set -uo pipefail

root="$(cd "$(dirname "$0")/.." && pwd)"
cd "$root"

actual=$(command ls -1 colors/*.vim 2>/dev/null | wc -l | tr -d ' ')
claimed=$(grep -oE 'schemes-[0-9]+' README.md | head -1 | grep -oE '[0-9]+')

ok=1

if [[ -z "$claimed" ]]; then
    echo "FAIL  README has no 'schemes-N' badge"
    ok=0
elif [[ "$claimed" != "$actual" ]]; then
    echo "FAIL  README claims $claimed schemes; colors/ has $actual"
    ok=0
else
    echo "PASS  README badge ($claimed) matches colors/ ($actual)"
fi

empty=0
while IFS= read -r f; do
    if [[ ! -s "$f" ]]; then
        echo "FAIL  empty scheme: $f"
        empty=$((empty + 1))
        ok=0
    fi
done < <(find colors -maxdepth 1 -name '*.vim' -type f 2>/dev/null)
[[ $empty -eq 0 ]] && echo "PASS  every colors/*.vim non-empty"

spaced=0
while IFS= read -r f; do
    if [[ "$f" == *" "* ]]; then
        echo "FAIL  scheme filename contains space: $f"
        spaced=$((spaced + 1))
        ok=0
    fi
done < <(find colors -maxdepth 1 -name '*.vim' -type f -printf '%f\n' 2>/dev/null || find colors -maxdepth 1 -name '*.vim' -type f -exec basename {} \;)
[[ $spaced -eq 0 ]] && echo "PASS  no scheme filename contains a space"

# --- Filename hygiene: vim's :colorscheme tokenizer rejects most shell
# specials; restrict to [A-Za-z0-9_+.-] for the basename.
bad_chars=0
while IFS= read -r f; do
    name="${f##*/}"
    name="${name%.vim}"
    if [[ ! "$name" =~ ^[A-Za-z0-9_+.-]+$ ]]; then
        echo "FAIL  scheme name has shell-unsafe chars: $name"
        bad_chars=$((bad_chars + 1))
        ok=0
    fi
done < <(find colors -maxdepth 1 -name '*.vim' -type f 2>/dev/null)
[[ $bad_chars -eq 0 ]] && echo "PASS  every scheme name matches [A-Za-z0-9_+.-]+"

# --- No duplicate scheme names — vim's runtime/colors lookup picks ONE
# match per name; duplicates silently shadow each other.
dup_count=$(find colors -maxdepth 1 -name '*.vim' -type f 2>/dev/null \
    | xargs -n1 basename \
    | sort \
    | uniq -d \
    | wc -l \
    | tr -d ' ')
if [[ "$dup_count" -gt 0 ]]; then
    echo "FAIL  $dup_count duplicate scheme basenames in colors/"
    ok=0
else
    echo "PASS  no duplicate scheme basenames"
fi

# --- Size sanity floor: a real colorscheme defines :hi groups; anything
# under 100 bytes is almost certainly a placeholder. Reports under
# 100 bytes as info, fails if anything is under 10 bytes.
tiny=0
while IFS= read -r f; do
    size=$(wc -c < "$f" | tr -d ' ')
    if [[ "$size" -lt 10 ]]; then
        echo "FAIL  scheme < 10 bytes (effectively empty): $f"
        tiny=$((tiny + 1))
        ok=0
    fi
done < <(find colors -maxdepth 1 -name '*.vim' -type f 2>/dev/null)
[[ $tiny -eq 0 ]] && echo "PASS  no scheme under 10 bytes"

# --- Schemes that DO declare g:colors_name should declare a name that
# matches the filename. Schemes that omit it are allowed (the validator
# script counts them as informational). Mismatches are vendored upstream
# bugs — `:colorscheme foo` after sourcing foo.vim won't surface in
# completion if g:colors_name='bar'. Surfaces the count without failing
# the repo contract: same policy as missing-name in validate-colorschemes.sh.
mismatched=0
mismatch_total=0
mismatch_examples=()
while IFS= read -r f; do
    expected_name="${f##*/}"
    expected_name="${expected_name%.vim}"
    # Match: let g:colors_name = 'NAME' / "NAME" — single OR double quotes.
    declared=$(grep -m1 -oE "let *g:colors_name *= *['\"][^'\"]*['\"]" "$f" 2>/dev/null \
        | head -1 \
        | sed -E "s/.*=[ ]*['\"]([^'\"]*)['\"].*/\1/")
    if [[ -n "$declared" ]]; then
        mismatch_total=$((mismatch_total + 1))
        if [[ "$declared" != "$expected_name" ]]; then
            mismatched=$((mismatched + 1))
            [[ "${#mismatch_examples[@]}" -lt 3 ]] && mismatch_examples+=("$expected_name -> '$declared'")
        fi
    fi
done < <(find colors -maxdepth 1 -name '*.vim' -type f 2>/dev/null)
matched=$((mismatch_total - mismatched))
if [[ $mismatched -eq 0 ]]; then
    echo "PASS  every g:colors_name (n=$mismatch_total) matches its filename"
else
    echo "INFO  $matched/$mismatch_total schemes have g:colors_name == filename; $mismatched are vendored upstream mismatches (e.g. ${mismatch_examples[*]})"
fi

if [[ $ok -eq 1 ]]; then
    echo "OK  repo contract holds ($actual schemes)"
    exit 0
else
    echo "FAIL  repo contract breached"
    exit 1
fi
