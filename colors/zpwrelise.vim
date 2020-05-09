"==============================================================================.
"        File: elise.vim                                                       |
"     License: Public Domain, FREE as LOVE.                                    |
" Description: The colorscheme "Für Elise".                                    |
"              A pinky-yellowy-greeny colorscheme inspired on a popular        |
"              classical composition of "Ludwig van Beethoven", called         |
"              "Für Elise" (For Elise).                                        |
"        Note: - Only standard (for all languages) highlight-groups are set.   |
"              - This colorscheme _should_ look nice everywhere.               |
"==============================================================================|
"      Author: drachenkiraa, {_drachen_kiraa_}@{_gmail_}.{com_}  (remove: _{}) |
" Last Change: 2009 Jul 1                                                      |
"     Version: 1.0                                                             |
"==========================================================================={{{1
"  Color Test: :he group-name                                                  |
"              :so $VIMRUNTIME/syntax/hitest.vim                               |
"   Tested On: - Linux (gvim v6.3, v6.4);                                      |
"              - Standard Linux Terminal (vim v6.3, v6.4);                     |
"              - Xterm, Rxvt, Konsole, gnome-terminal (vim v6.3, v6.4).        |
"              - Windows (gvim v7.1, v7.2);                                    |
"              - DOS (vim v7.1, v7.2).                                         |
"        TODO: * Test this colorscheme on newer versions of vim/gvim for Linux |
"                and other systems (*BSD, Mac, Amiga?).                        |
"              * Are all the has("feature") checks really worth?               |
"                Please enlighten me if I'm wrong.                             |
"==============================================================================|
" Random Tips:                                                                 |
" * If your terminal supports more than 8 colors (which is the case of most    |
"   modern xterms, rxvts, and others), then it is worth adding the following   |
"   lines somewhere into your .vimrc:                                          |
"       if &term =~ "xterm"                                                    |
"         set t_Co=16                                                          |
"       endif                                                                  |
"   That'll make this colorscheme look a lot better on such terminals.         |
"   For further help checkout:                                                 |
"       :he term-dependent-settings                                            |
"       :he term                                                               |
"===========================================================================}}}1
" Initial setup stuff {{{1
" Remove existing highlighting
set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "zpwrelise"
hi Normal ctermbg=None ctermfg=Gray cterm=NONE guibg=Black guifg=Gray75 gui=none

" Vim >= 7.0 specific colors {{{1
if v:version >= 700
  " Cursor colors {{{2
  hi Cursor ctermbg=DarkYellow ctermfg=Gray guibg=LightYellow guifg=Black gui=none
  hi CursorLine ctermbg=DarkGray guibg=Gray15 gui=none
  hi CursorColumn ctermbg=DarkGray guibg=Gray15 gui=none
  " only for Win32, IME status
  if has('multi_byte_ime')
    hi CursorIM guibg=LightGreen guifg=NONE gui=none
  endif

  " Auto-completion Popup Menu colors {{{2
  hi Pmenu ctermbg=DarkMagenta ctermfg=Black cterm=NONE guibg=#330066 guifg=Gray gui=none
  hi PmenuSel ctermbg=Black ctermfg=Magenta cterm=NONE guibg=#cc99ff guifg=Black gui=none
  hi PmenuSbar ctermbg=DarkBlue ctermfg=DarkBlue cterm=NONE guibg=#663399 guifg=Gray gui=none
  hi PmenuThumb ctermbg=DarkCyan ctermfg=DarkCyan cterm=NONE guibg=#9966cc guifg=Gray gui=none

  " Tab colors {{{2
  if has("windows")
    hi TabLine ctermbg=DarkYellow ctermfg=Black cterm=NONE guibg=Gray20 guifg=#ffcc66 gui=none
    hi TabLineFill ctermbg=DarkYellow ctermfg=Black cterm=NONE guibg=Gray20 guifg=#ffcc66 gui=none
    hi TabLineSel ctermbg=DarkBlue ctermfg=Gray cterm=NONE guibg=#ffcc66 guifg=Gray20 gui=bold
  endif

  " Spell checking colors {{{2
  if has("spell")
    hi SpellBad ctermbg=White ctermfg=Red cterm=NONE guisp=Red gui=undercurl
    hi SpellCap ctermbg=White ctermfg=Blue cterm=NONE guisp=Blue gui=undercurl
    hi SpellLocal ctermbg=White ctermfg=DarkCyan cterm=NONE guisp=DarkCyan gui=undercurl
    hi SpellRare ctermbg=White ctermfg=DarkMagenta cterm=NONE guisp=Magenta gui=undercurl
  endif

endif "}}}1
" Messages and other texts' colors {{{1
hi WarningMsg ctermbg=Black ctermfg=Red cterm=NONE guibg=Black guifg=#ff3333 gui=none
hi ErrorMsg ctermbg=Red ctermfg=White cterm=NONE guibg=Red2 guifg=White gui=none
hi ModeMsg ctermbg=Black ctermfg=Gray cterm=NONE guibg=Black guifg=Gray gui=none
hi MoreMsg ctermbg=Black ctermfg=Cyan cterm=NONE guibg=Black guifg=Cyan gui=none
hi Question ctermbg=Black ctermfg=White cterm=NONE guibg=Black guifg=White gui=none
hi Directory ctermbg=Black ctermfg=Yellow cterm=NONE guibg=Black guifg=Yellow gui=none
hi Title ctermbg=Black ctermfg=Yellow cterm=NONE guibg=Black guifg=Yellow gui=none

" Diff colors {{{1
if has("diff")
  hi DiffAdd ctermbg=Green ctermfg=Black cterm=NONE guibg=LightGreen guifg=Black gui=none
  hi DiffChange ctermbg=Blue ctermfg=Gray cterm=NONE guibg=LightBlue guifg=Black gui=none
  hi DiffDelete ctermbg=Red ctermfg=Gray cterm=NONE guibg=LightRed guifg=Black gui=none
  hi DiffText ctermbg=Cyan ctermfg=Black cterm=NONE guibg=LightCyan guifg=Black gui=none
endif

" Outline, Fold & Sign columns colors {{{1
hi LineNr ctermbg=Black ctermfg=DarkGray guibg=Black guifg=Gray40 gui=none
if has("folding")
  hi Folded ctermbg=Black ctermfg=DarkCyan cterm=NONE guibg=Gray10 guifg=#66ccff gui=none
  hi FoldColumn ctermbg=Black ctermfg=Cyan cterm=NONE guibg=Gray10 guifg=#66ccff gui=none
endif
if has("signs")
  hi SignColumn ctermbg=Black ctermfg=Magenta guibg=Gray10 guifg=Magenta gui=none
endif

" Search & Special characters' colors {{{1
if has("extra_search")
  hi Search ctermbg=Yellow ctermfg=Black cterm=NONE guibg=Yellow guifg=Black gui=none
  hi IncSearch ctermbg=Green ctermfg=Black cterm=NONE guibg=Green guifg=Black gui=none
endif
hi NonText ctermbg=Black ctermfg=DarkGray guibg=Black guifg=DarkGray gui=none
hi SpecialKey ctermbg=Black ctermfg=DarkCyan guibg=Black guifg=DarkCyan gui=none

" Window Bars, Status line & Visual mode colors {{{1
hi StatusLine ctermbg=DarkBlue ctermfg=Gray cterm=NONE guibg=#ffcc66 guifg=Black gui=none
if has("windows")
  hi StatusLineNC ctermbg=DarkYellow ctermfg=Black cterm=NONE guibg=Gray20 guifg=#ffcc66 gui=none
endif

if has("vertsplit")
  hi VertSplit ctermbg=DarkYellow ctermfg=Black cterm=NONE guibg=Gray20 guifg=#ffcc66 gui=none
endif

if has("wildmenu")
  hi WildMenu ctermbg=Black ctermfg=Magenta guibg=Black guifg=#ffcc66 gui=bold
endif

if has("visual")
  hi Visual ctermbg=Yellow ctermfg=Black cterm=NONE guibg=#ffffcc guifg=Black gui=none
  hi VisualNOS ctermbg=DarkBlue ctermfg=Yellow cterm=NONE guibg=#ffffcc guifg=DarkRed gui=none
endif

" Syntax highlighting colors {{{1
hi Comment ctermbg=Black ctermfg=Magenta guibg=Black guifg=#ff99cc gui=none
hi link SpecialComment Comment

hi Character ctermbg=Black ctermfg=Cyan guibg=Black guifg=Cyan gui=none
hi String ctermbg=Black ctermfg=Cyan guibg=Black guifg=Cyan gui=none
hi Constant ctermbg=Black ctermfg=Blue guibg=Black guifg=LightBlue gui=none
hi link Number Constant
hi link Float Constant
hi link Boolean Constant

hi Identifier ctermbg=Black ctermfg=Cyan guibg=Black guifg=Cyan gui=none
hi Function ctermbg=Black ctermfg=Green guibg=Black guifg=Green gui=none

hi Statement ctermbg=Black ctermfg=Yellow guibg=Black guifg=#eecc00 gui=none
hi link Conditional Statement
hi link Repeat Statement
hi link Operator Statement
hi link Keyword Statement
hi link Label Statement
hi link Exception Statement

hi Type ctermbg=Black ctermfg=Green guibg=Black guifg=#99ee00 gui=none
hi link StorageClass Type
hi link Structure Type
hi link Typedef Type

hi PreProc ctermbg=Black ctermfg=Blue guibg=Black guifg=#cc99ff gui=none
hi PreCondit ctermbg=Black ctermfg=Blue guibg=Black guifg=#cc66dd gui=none
hi link Include PreProc
hi link Define PreProc

hi Special ctermbg=Black ctermfg=Blue guibg=Black guifg=#ff8888 gui=none
hi SpecialChar ctermbg=Black ctermfg=Magenta guibg=Black guifg=#ff33ff gui=none
hi Tag ctermbg=Black ctermfg=DarkCyan guibg=Black guifg=DarkCyan gui=none
hi Delimiter ctermbg=Black ctermfg=DarkCyan guibg=Black guifg=DarkCyan gui=none
hi Debug ctermbg=Black ctermfg=DarkGray guibg=Black guifg=DarkGray gui=none

hi MatchParen ctermbg=Green ctermfg=Black cterm=NONE guibg=Green guifg=Black gui=none
hi Error ctermbg=Red ctermfg=White cterm=NONE guibg=Black guifg=#ff3333 gui=none
hi Ignore ctermbg=Black ctermfg=Black cterm=NONE guibg=Black guifg=Black gui=none
hi Todo ctermbg=Magenta ctermfg=Black cterm=NONE guibg=#ff66cc guifg=Black gui=none
hi Underlined ctermbg=Black ctermfg=Cyan cterm=underline guibg=Black guifg=Cyan gui=underline
"}}}1
"==========================================================================={{{1
" vim: set et sw=2 sts=2 ts=8 nowrap:
" vim600: set fdc=2 fdm=marker:
