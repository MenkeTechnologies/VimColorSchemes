#!/usr/bin/env bash
# Hard pin: specific MenkeTechnologies-authored schemes MUST declare
# `let g:colors_name = '<basename>'`. Vendored upstream mismatches are
# tolerated by repo-contract.sh as INFO, but our own schemes have no
# such excuse — `:colorscheme menketech-cyberpunk` after sourcing the
# file MUST surface `menketech-cyberpunk` in cmdline completion, not
# some other name.
#
# Exit 0 on full pass, 1 on any mismatch or missing file.

set -uo pipefail

root="$(cd "$(dirname "$0")/.." && pwd)"
cd "$root"

# Pinned set — schemes authored in this repo (not vendored). Each line:
# basename (without .vim). Expected g:colors_name == basename.
schemes=(
    menketech-cyberpunk
    zpwrguardian
    zpwrelise
    zpwrelrond
    zpwrneverness
    zpwrpride
    zpwrsprinkles
    zpwrmarklar
)

ok=1

for name in "${schemes[@]}"; do
    f="colors/${name}.vim"
    if [[ ! -f "$f" ]]; then
        echo "FAIL  pinned scheme missing: $f"
        ok=0
        continue
    fi
    declared=$(grep -m1 -oE "let *g:colors_name *= *['\"][^'\"]*['\"]" "$f" 2>/dev/null \
        | head -1 \
        | sed -E "s/.*=[ ]*['\"]([^'\"]*)['\"].*/\1/")
    if [[ -z "$declared" ]]; then
        echo "FAIL  $f declares no g:colors_name"
        ok=0
    elif [[ "$declared" != "$name" ]]; then
        echo "FAIL  $f declares g:colors_name='$declared' (expected '$name')"
        ok=0
    else
        echo "PASS  $f g:colors_name='$declared'"
    fi
done

if [[ $ok -eq 1 ]]; then
    echo "OK  ${#schemes[@]} pinned schemes have matching g:colors_name"
    exit 0
else
    echo "FAIL  pinned-scheme contract breached"
    exit 1
fi
