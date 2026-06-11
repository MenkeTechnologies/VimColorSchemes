```
 _   _ ___ __  __    ____ ___  _     ___  ____  ____   ____ _   _ _____ __  __ _____ ____
| | | |_ _|  \/  |  / ___/ _ \| |   / _ \|  _ \/ ___| / ___| | | | ____|  \/  | ____/ ___|
| | | || || |\/| | | |  | | | | |  | | | | |_) \___ \| |   | |_| |  _| | |\/| |  _| \___ \
| |_| || || |  | | | |__| |_| | |__| |_| |  _ < ___) | |___|  _  | |___| |  | | |___ ___) |
 \___/|___|_|  |_|  \____\___/|_____\___/|_| \_\____/ \____|_| |_|_____|_|  |_|_____|____/
```

<p align="center">
<code>// 732 COLORSCHEMES. ONE PATHOGEN BUNDLE. PAINT THE TERMINAL.</code>
</p>

---

[![Schemes](https://img.shields.io/badge/schemes-732-ff2a6d.svg)](colors/)
[![Curator](https://img.shields.io/badge/curated_by-MenkeTechnologies-05d9e8.svg)](https://github.com/MenkeTechnologies)
[![Loader](https://img.shields.io/badge/loader-pathogen-d300c5.svg)](https://github.com/tpope/vim-pathogen)
[![Tag](https://img.shields.io/badge/tag-v0.1.0-39ff14.svg)](https://github.com/MenkeTechnologies/VimColorSchemes/tags)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

### `[SIGNAL // THE LARGEST CURATED VIM COLORSCHEME BUNDLE IN ONE BAGGED PLUGIN]`

> *// jacking into 732 distinct color decks — one `git clone`, every neon, every pastel, every gruvbox //*

---

## `> SYSTEM OVERVIEW`

**VimColorSchemes** is a 732-deck bundle of Vim colorschemes — every `.vim` file in `colors/` is a working `:colorscheme` target the moment the bundle is loaded. No per-scheme installs, no plugin manager-of-the-week churn, no curating six community packs to get one missing palette. One bundle. Every scheme. Hand-curated by [MenkeTechnologies](https://github.com/MenkeTechnologies).

Drop the bundle into Pathogen, pick a scheme, move on.

---

## `> CAPABILITIES`

```
[x] 732 distinct Vim colorschemes in a single Pathogen-loadable bundle
[x] Zero runtime — pure `colors/*.vim` files, no autoload scripts
[x] Works with every Vim plugin loader that honours `runtimepath` /
    `:colorscheme <name>` (Pathogen, vim-plug, packer, lazy.nvim, native packages)
[x] Neovim compatible
[x] Dark, light, pastel, neon, monochrome — every aesthetic family covered
[x] Compatible with terminal Vim (256-color + truecolor) and GUI Vim
[x] Includes ports/forks of community classics (gruvbox, dracula, solarized,
    molokai, jellybeans, nord, tokyo-night, catppuccin, …) alongside niche /
    artistic / one-off palettes that don't exist anywhere else as a bundle
```

---

## `> INSTALL`

### Pathogen (canonical)

```sh
cd "$HOME/.vim/bundle" && git clone https://github.com/MenkeTechnologies/VimColorSchemes.git
```

### vim-plug

```vim
Plug 'MenkeTechnologies/VimColorSchemes'
```

### Native Vim 8 packages

```sh
git clone https://github.com/MenkeTechnologies/VimColorSchemes.git \
    ~/.vim/pack/menketech/start/VimColorSchemes
```

### Neovim (`lazy.nvim`)

```lua
{ "MenkeTechnologies/VimColorSchemes", lazy = false, priority = 1000 }
```

---

## `> USAGE`

After install, pick any scheme from `colors/`:

```vim
:colorscheme gruvbox
:colorscheme dracula
:colorscheme molokai
:colorscheme tokyonight
```

For a random shuffle on every Vim launch:

```vim
" .vimrc
function! RandomColorScheme()
  let schemes = split(globpath(&runtimepath, 'colors/*.vim'), '\n')
  let pick    = schemes[localtime() % len(schemes)]
  exe 'colorscheme ' . fnamemodify(pick, ':t:r')
endfunction
autocmd VimEnter * call RandomColorScheme()
```

For a fuzzy picker (fzf.vim):

```vim
nnoremap <silent> <Leader>c :Colors<CR>
```

---

## `> FILES`

```
VimColorSchemes/
├── colors/    ← 732 *.vim files, drop-in to runtimepath
├── tests/     ← repo-contract + colorscheme validation scripts
├── license.md ← MIT (curation layer)
└── README.md  ← this file
```

---

## `> LICENSE`

[MIT](https://opensource.org/licenses/MIT) for the curation layer. Individual colorschemes retain their upstream licenses where applicable — see file headers.

---

<p align="center">
<code>// END OF FILE // 732 SIGNALS LOCKED //</code>
</p>
