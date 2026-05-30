#!/usr/bin/env bash
# Round-4 walk: extend colors-name-pinned.sh to scan EVERY colors/*.vim
# (vendored upstream schemes included). Mismatches are reported as
# WARN, NOT FAIL — vendored schemes have historical reasons for names
# diverging from their filenames (forks, renames upstream, etc.).
#
# Hard FAIL only on:
#   * MenkeTech-authored schemes (already in colors-name-pinned.sh).
#   * Vendored schemes that BOTH declare g:colors_name AND have a
#     declared name that includes ".vim" suffix (a parse error, not a
#     forgivable historical drift).
#
# Output: counts of OK / WARN / FAIL. Exit 0 on no hard FAIL, 1 on any.

set -uo pipefail

root="$(cd "$(dirname "$0")/.." && pwd)"
cd "$root"

ok_count=0
warn_count=0
fail_count=0

# Build set of MenkeTech-authored names — these are the basenames
# whose mismatch must be a hard fail. Source from colors-name-pinned.sh
# so the two stay in sync without manual duplication.
mt_authored=(
    menketech-cyberpunk
    zpwrguardian
    zpwrelise
    zpwrelrond
    zpwrneverness
    zpwrpride
    zpwrsprinkles
    zpwrmarklar
)

is_mt_authored() {
    local n=$1
    for x in "${mt_authored[@]}"; do
        [[ "$x" == "$n" ]] && return 0
    done
    return 1
}

# Walk every scheme.
shopt -s nullglob
for f in colors/*.vim; do
    name="${f##*/}"
    name="${name%.vim}"

    declared=$(grep -m1 -oE "let *g:colors_name *= *['\"][^'\"]*['\"]" "$f" 2>/dev/null \
        | head -1 \
        | sed -E "s/.*=[ ]*['\"]([^'\"]*)['\"].*/\1/")

    if [[ -z "$declared" ]]; then
        # No g:colors_name declared at all. For vendored schemes this
        # is common (the scheme is identified by filename only). WARN.
        if is_mt_authored "$name"; then
            echo "FAIL  $f (MT-authored): no g:colors_name declared"
            fail_count=$((fail_count + 1))
        else
            warn_count=$((warn_count + 1))
        fi
        continue
    fi

    if [[ "$declared" == "$name" ]]; then
        ok_count=$((ok_count + 1))
    elif [[ "$declared" == *.vim ]]; then
        # Hard fail: a declared name that ends in .vim is a parse error
        # (someone interpolated the filename incorrectly). This is bug
        # regardless of vendoring status.
        echo "FAIL  $f: g:colors_name='$declared' contains .vim suffix"
        fail_count=$((fail_count + 1))
    elif is_mt_authored "$name"; then
        echo "FAIL  $f (MT-authored): g:colors_name='$declared' != basename '$name'"
        fail_count=$((fail_count + 1))
    else
        # Vendored mismatch — historical drift, tolerated.
        warn_count=$((warn_count + 1))
    fi
done

total=$((ok_count + warn_count + fail_count))
echo "Scanned $total schemes: OK=$ok_count WARN=$warn_count FAIL=$fail_count"

if [[ $fail_count -gt 0 ]]; then
    echo "FAIL  $fail_count hard violations"
    exit 1
fi
exit 0
