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

if [[ $ok -eq 1 ]]; then
    echo "OK  repo contract holds ($actual schemes)"
    exit 0
else
    echo "FAIL  repo contract breached"
    exit 1
fi
