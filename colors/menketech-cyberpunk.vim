" =============================================================================
" Name:     menketech-cyberpunk.vim
" Author:   MenkeTechnologies
" License:  MIT
" Source:   https://github.com/MenkeTechnologies/VimColorSchemes
" =============================================================================
"
" Cyberpunk colorscheme matched to the MenkeTechnologies HUD docs palette
" (cyan / hot pink / neon magenta on near-black) shipped across zpwr,
" zshrs, strykelang, fusevm, Audio-Haxor, traderview, and the stryke
" ecosystem docs/index.html sites.
"
" Background is the same near-black (#05050a) the docs use; foreground
" the same off-white (#e0f0ff). Statement / Type / Function are routed
" to the three signature glow colors:
"   - cyan       #05d9e8  → keywords (Statement, Conditional, Repeat, ...)
"   - hot pink   #ff2a6d  → types + identifiers (the docs use it as the
"                          headline accent; here it tags structural names)
"   - neon green #39ff14  → strings (the "string in a sea of dark" pop)
" Comments use the docs' text-muted (#3d4f6a) so they recede the way
" the muted UI text does on the HUD background.
" =============================================================================

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "menketech-cyberpunk"

" ─── Base UI ─────────────────────────────────────────────────────────
hi Normal         guifg=#e0f0ff guibg=#05050a ctermfg=255 ctermbg=232 cterm=NONE
hi NonText        guifg=#3d4f6a guibg=#05050a ctermfg=60  ctermbg=232 cterm=NONE
hi EndOfBuffer    guifg=#1a1a3e guibg=#05050a ctermfg=237 ctermbg=232 cterm=NONE
hi LineNr         guifg=#3d4f6a guibg=#0a0a14 ctermfg=60  ctermbg=233 cterm=NONE
hi CursorLineNr   guifg=#05d9e8 guibg=#0a0a14 ctermfg=51  ctermbg=233 cterm=bold
hi CursorLine     guifg=NONE    guibg=#12122a ctermfg=NONE ctermbg=234 cterm=NONE
hi CursorColumn   guifg=NONE    guibg=#12122a ctermfg=NONE ctermbg=234 cterm=NONE
hi ColorColumn    guifg=NONE    guibg=#0d0d1a ctermfg=NONE ctermbg=233 cterm=NONE
hi SignColumn     guifg=#7a8ba8 guibg=#05050a ctermfg=103 ctermbg=232 cterm=NONE
hi Folded         guifg=#7a8ba8 guibg=#0a0a14 ctermfg=103 ctermbg=233 cterm=italic
hi FoldColumn     guifg=#3d4f6a guibg=#05050a ctermfg=60  ctermbg=232 cterm=NONE
hi VertSplit      guifg=#1a1a3e guibg=#05050a ctermfg=237 ctermbg=232 cterm=NONE
hi MatchParen     guifg=#39ff14 guibg=NONE    ctermfg=10  ctermbg=NONE cterm=bold

" ─── Selection / Visual ──────────────────────────────────────────────
hi Visual         guifg=NONE    guibg=#1a1a3e ctermfg=NONE ctermbg=237 cterm=NONE
hi VisualNOS      guifg=NONE    guibg=#0d0d1a ctermfg=NONE ctermbg=233 cterm=underline
hi Search         guifg=#05050a guibg=#ffb800 ctermfg=232 ctermbg=214 cterm=NONE
hi IncSearch      guifg=#05050a guibg=#39ff14 ctermfg=232 ctermbg=10  cterm=NONE
hi CurSearch      guifg=#05050a guibg=#ff2a6d ctermfg=232 ctermbg=197 cterm=bold

" ─── Status / Tab line ──────────────────────────────────────────────
hi StatusLine     guifg=#e0f0ff guibg=#0d0d1a ctermfg=255 ctermbg=233 cterm=NONE
hi StatusLineNC   guifg=#7a8ba8 guibg=#0a0a14 ctermfg=103 ctermbg=233 cterm=NONE
hi TabLine        guifg=#7a8ba8 guibg=#0a0a14 ctermfg=103 ctermbg=233 cterm=NONE
hi TabLineFill    guifg=NONE    guibg=#05050a ctermfg=NONE ctermbg=232 cterm=NONE
hi TabLineSel     guifg=#05d9e8 guibg=#12122a ctermfg=51  ctermbg=234 cterm=bold
hi WildMenu       guifg=#05050a guibg=#05d9e8 ctermfg=232 ctermbg=51  cterm=bold

" ─── Cursor + popup ──────────────────────────────────────────────────
hi Cursor         guifg=#05050a guibg=#05d9e8 ctermfg=232 ctermbg=51  cterm=NONE
hi iCursor        guifg=#05050a guibg=#ff2a6d ctermfg=232 ctermbg=197 cterm=NONE
hi vCursor        guifg=#05050a guibg=#39ff14 ctermfg=232 ctermbg=10  cterm=NONE
hi Pmenu          guifg=#e0f0ff guibg=#0d0d1a ctermfg=255 ctermbg=233 cterm=NONE
hi PmenuSel       guifg=#05050a guibg=#05d9e8 ctermfg=232 ctermbg=51  cterm=bold
hi PmenuSbar      guifg=NONE    guibg=#1a1a3e ctermfg=NONE ctermbg=237 cterm=NONE
hi PmenuThumb     guifg=NONE    guibg=#05d9e8 ctermfg=NONE ctermbg=51  cterm=NONE

" ─── Messages ────────────────────────────────────────────────────────
hi ErrorMsg       guifg=#ff073a guibg=NONE    ctermfg=196 ctermbg=NONE cterm=bold
hi WarningMsg     guifg=#ffb800 guibg=NONE    ctermfg=214 ctermbg=NONE cterm=bold
hi ModeMsg        guifg=#05d9e8 guibg=NONE    ctermfg=51  ctermbg=NONE cterm=bold
hi MoreMsg        guifg=#39ff14 guibg=NONE    ctermfg=10  ctermbg=NONE cterm=bold
hi Question       guifg=#05d9e8 guibg=NONE    ctermfg=51  ctermbg=NONE cterm=NONE

" ─── Syntax — keywords / control flow ───────────────────────────────
hi Statement      guifg=#05d9e8 guibg=NONE    ctermfg=51  ctermbg=NONE cterm=bold
hi Conditional    guifg=#05d9e8 guibg=NONE    ctermfg=51  ctermbg=NONE cterm=bold
hi Repeat         guifg=#05d9e8 guibg=NONE    ctermfg=51  ctermbg=NONE cterm=bold
hi Label          guifg=#05d9e8 guibg=NONE    ctermfg=51  ctermbg=NONE cterm=NONE
hi Operator       guifg=#ff2a6d guibg=NONE    ctermfg=197 ctermbg=NONE cterm=NONE
hi Keyword        guifg=#05d9e8 guibg=NONE    ctermfg=51  ctermbg=NONE cterm=bold
hi Exception      guifg=#ff073a guibg=NONE    ctermfg=196 ctermbg=NONE cterm=bold

" ─── Syntax — identifiers ────────────────────────────────────────────
hi Identifier     guifg=#e0f0ff guibg=NONE    ctermfg=255 ctermbg=NONE cterm=NONE
hi Function       guifg=#d300c5 guibg=NONE    ctermfg=164 ctermbg=NONE cterm=NONE

" ─── Syntax — types ──────────────────────────────────────────────────
hi Type           guifg=#ff2a6d guibg=NONE    ctermfg=197 ctermbg=NONE cterm=NONE
hi StorageClass   guifg=#ff2a6d guibg=NONE    ctermfg=197 ctermbg=NONE cterm=NONE
hi Structure      guifg=#ff2a6d guibg=NONE    ctermfg=197 ctermbg=NONE cterm=NONE
hi Typedef        guifg=#ff2a6d guibg=NONE    ctermfg=197 ctermbg=NONE cterm=NONE

" ─── Syntax — constants ──────────────────────────────────────────────
hi Constant       guifg=#ffb800 guibg=NONE    ctermfg=214 ctermbg=NONE cterm=NONE
hi Number         guifg=#ffb800 guibg=NONE    ctermfg=214 ctermbg=NONE cterm=NONE
hi Float          guifg=#ffb800 guibg=NONE    ctermfg=214 ctermbg=NONE cterm=NONE
hi Boolean        guifg=#ff2a6d guibg=NONE    ctermfg=197 ctermbg=NONE cterm=bold
hi Character      guifg=#39ff14 guibg=NONE    ctermfg=10  ctermbg=NONE cterm=NONE
hi String         guifg=#39ff14 guibg=NONE    ctermfg=10  ctermbg=NONE cterm=NONE
hi SpecialChar    guifg=#ff6b9d guibg=NONE    ctermfg=211 ctermbg=NONE cterm=NONE

" ─── Syntax — preprocessor / special ────────────────────────────────
hi PreProc        guifg=#d300c5 guibg=NONE    ctermfg=164 ctermbg=NONE cterm=NONE
hi Include        guifg=#d300c5 guibg=NONE    ctermfg=164 ctermbg=NONE cterm=NONE
hi Define         guifg=#d300c5 guibg=NONE    ctermfg=164 ctermbg=NONE cterm=NONE
hi Macro          guifg=#d300c5 guibg=NONE    ctermfg=164 ctermbg=NONE cterm=NONE
hi PreCondit      guifg=#d300c5 guibg=NONE    ctermfg=164 ctermbg=NONE cterm=NONE
hi Special        guifg=#ff6b9d guibg=NONE    ctermfg=211 ctermbg=NONE cterm=NONE
hi SpecialKey     guifg=#3d4f6a guibg=NONE    ctermfg=60  ctermbg=NONE cterm=NONE
hi Tag            guifg=#05d9e8 guibg=NONE    ctermfg=51  ctermbg=NONE cterm=NONE
hi Delimiter      guifg=#7a8ba8 guibg=NONE    ctermfg=103 ctermbg=NONE cterm=NONE

" ─── Syntax — comments / todo ────────────────────────────────────────
hi Comment        guifg=#3d4f6a guibg=NONE    ctermfg=60  ctermbg=NONE cterm=italic
hi Todo           guifg=#05050a guibg=#ffb800 ctermfg=232 ctermbg=214 cterm=bold
hi Error          guifg=#05050a guibg=#ff073a ctermfg=232 ctermbg=196 cterm=bold
hi Underlined     guifg=#05d9e8 guibg=NONE    ctermfg=51  ctermbg=NONE cterm=underline
hi Ignore         guifg=#1a1a3e guibg=NONE    ctermfg=237 ctermbg=NONE cterm=NONE

" ─── Diff ────────────────────────────────────────────────────────────
hi DiffAdd        guifg=#39ff14 guibg=#0d2010 ctermfg=10  ctermbg=22  cterm=NONE
hi DiffChange     guifg=#ffb800 guibg=#1f1a05 ctermfg=214 ctermbg=58  cterm=NONE
hi DiffDelete     guifg=#ff073a guibg=#200508 ctermfg=196 ctermbg=52  cterm=NONE
hi DiffText       guifg=#ff2a6d guibg=#2a0a18 ctermfg=197 ctermbg=53  cterm=bold

" ─── Spelling ────────────────────────────────────────────────────────
hi SpellBad       guifg=#ff073a guibg=NONE    ctermfg=196 ctermbg=NONE cterm=underline
hi SpellCap       guifg=#05d9e8 guibg=NONE    ctermfg=51  ctermbg=NONE cterm=underline
hi SpellLocal     guifg=#39ff14 guibg=NONE    ctermfg=10  ctermbg=NONE cterm=underline
hi SpellRare      guifg=#d300c5 guibg=NONE    ctermfg=164 ctermbg=NONE cterm=underline

" ─── Quickfix / Net listing ─────────────────────────────────────────
hi QuickFixLine   guifg=NONE    guibg=#1a1a3e ctermfg=NONE ctermbg=237 cterm=NONE
hi qfLineNr       guifg=#7a8ba8 guibg=NONE    ctermfg=103 ctermbg=NONE cterm=NONE
hi qfFileName     guifg=#05d9e8 guibg=NONE    ctermfg=51  ctermbg=NONE cterm=NONE

" ─── Treesitter highlights (Neovim) ─────────────────────────────────
hi! link @keyword         Keyword
hi! link @keyword.return  Statement
hi! link @function        Function
hi! link @function.call   Function
hi! link @method          Function
hi! link @variable        Identifier
hi! link @parameter       Identifier
hi! link @type            Type
hi! link @type.builtin    Type
hi! link @constant        Constant
hi! link @constant.builtin Boolean
hi! link @string          String
hi! link @string.escape   SpecialChar
hi! link @comment         Comment
hi! link @operator        Operator
hi! link @punctuation     Delimiter

" ─── LSP semantic-token highlights (Neovim) ─────────────────────────
hi DiagnosticError       guifg=#ff073a guibg=NONE ctermfg=196 ctermbg=NONE cterm=NONE
hi DiagnosticWarn        guifg=#ffb800 guibg=NONE ctermfg=214 ctermbg=NONE cterm=NONE
hi DiagnosticInfo        guifg=#05d9e8 guibg=NONE ctermfg=51  ctermbg=NONE cterm=NONE
hi DiagnosticHint        guifg=#7a8ba8 guibg=NONE ctermfg=103 ctermbg=NONE cterm=NONE
hi DiagnosticOk          guifg=#39ff14 guibg=NONE ctermfg=10  ctermbg=NONE cterm=NONE
