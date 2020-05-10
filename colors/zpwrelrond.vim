" vim: tw=0 ts=4 sw=4 et
" Vim color file
"
" Based on Vim's built-in "elflord" color scheme,
" originally by Ron Aaron <ron@ronware.org>
"
" Maintainer:   Adrian Perez <aperez@igalia.com>
"

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "zpwrelrond"

let g:elrond#cursorline   = get(g:, 'elrond#cursorline',         1)
let g:elrond#cursorline16 = get(g:, 'elrond#cursorline16' , 'bold')


hi Normal     guifg=#fafafa  guibg=black

hi Comment    term=italic    ctermfg=DarkCyan        guifg=#80a0ff
hi Constant   term=underline ctermfg=Magenta         guifg=Magenta
hi Special    term=bold      ctermfg=DarkMagenta     guifg=Red
hi Identifier term=underline cterm=bold ctermfg=Cyan guifg=#40ffff
hi Statement  term=bold      ctermfg=Yellow gui=bold guifg=#aa4444
hi PreProc    term=underline ctermfg=LightBlue       guifg=#ff80ff
hi Type       term=underline ctermfg=LightGreen      guifg=#60ff60 gui=bold
hi Function   term=bold      ctermfg=Blue guifg=White
hi Repeat     term=underline ctermfg=White           guifg=white
hi Operator                  ctermfg=Red             guifg=Red
hi Ignore                    ctermfg=black           guifg=bg
hi Error      term=reverse   ctermbg=Red    ctermfg=White guibg=Red  guifg=White
hi Todo       term=standout  ctermbg=Yellow ctermfg=Black guifg=Blue guibg=Yellow

hi CursorLine NONE

if &t_Co == 256
    if g:elrond#cursorline
        set cursorline
        hi CursorLine ctermbg=233
    endif

    hi CursorLineNr  ctermbg=235 ctermfg=246
    hi LineNr        ctermbg=234 ctermfg=238
    hi SignColumn    ctermbg=234
    hi Pmenu         ctermbg=235 ctermfg=White
    hi PmenuSel      ctermbg=238 ctermfg=White
    hi PmenuSbar     ctermbg=238
    hi PmenuThumb    ctermbg=240
    hi VertSplit     ctermbg=235 ctermfg=235
    hi StatusLine    ctermbg=235 ctermfg=230 cterm=NONE
    hi StatusLineNC  ctermbg=235 ctermfg=246 cterm=NONE
    hi TabLine       ctermbg=235 ctermfg=246 cterm=NONE
    hi TabLineSel    ctermbg=246 ctermfg=235
    hi TabLineFill   ctermbg=235             cterm=NONE

    hi LiningItem    ctermbg=236 ctermfg=252
    hi LiningVertSep ctermbg=236 ctermfg=240
    hi LiningBufName ctermbg=237 ctermfg=252 cterm=bold
    hi LiningLnCol   ctermbg=237 ctermfg=252
else
    "
    " Common definitions for 8 & 16 color terminals
    "
    hi CursorLineNr  ctermbg=DarkGrey  ctermfg=White     cterm=bold
    hi LineNr        ctermbg=DarkGrey  ctermfg=LightGrey
    hi SignColumn    ctermbg=Black                       cterm=bold
    hi VertSplit     ctermbg=DarkGrey  ctermfg=DarkGrey
    hi StatusLineNC  ctermbg=LightGrey ctermfg=0         cterm=reverse,bold
    hi TabLine       ctermbg=DarkGrey  ctermfg=LightGrey cterm=NONE
    hi TabLineSel    ctermbg=LightGrey ctermfg=White
    hi TabLineFill   ctermbg=DarkGrey                    cterm=NONE

    if &t_Co == 16
        if g:elrond#cursorline
            set cursorline
            if g:elrond#cursorline16 == 'bold'
                hi CursorLine cterm=bold
            elseif g:elrond#cursorline16 == 'reverse'
                hi CursorLine cterm=reverse
            elseif g:elrond#cursorline16 == 'underline'
                hi CursorLine cterm=underline
            endif
        endif

        hi Pmenu         ctermbg=DarkGrey  ctermfg=White
        hi PmenuSel      ctermbg=LightGrey ctermfg=White     cterm=bold
        hi PmenuSbar     ctermbg=DarkGrey  ctermfg=White
        hi PmenuThumb    ctermbg=DarkGrey  ctermfg=LightGrey

        hi StatusLine    ctermbg=White     ctermfg=0         cterm=reverse,bold
        hi LiningItem    ctermbg=DarkGrey  ctermfg=White cterm=NONE
        hi LiningBufName ctermbg=LightGrey ctermfg=Black cterm=bold
    else
        " Cursor lines with 8 colors only are quite terribly looking
        set nocursorline

        hi Pmenu         ctermfg=NONE ctermbg=NONE  cterm=reverse,bold
        hi PmenuSel      ctermfg=Cyan ctermbg=Black cterm=reverse
        hi PmenuSbar     ctermfg=Cyan ctermbg=NONE
        hi PmenuThumb    ctermfg=Cyan ctermbg=NONE  cterm=bold

        hi StatusLine    ctermfg=NONE ctermbg=NONE  cterm=reverse
        hi StatusLineNC  ctermfg=NONE ctermbg=NONE  cterm=reverse,bold
        hi LiningBufName ctermfg=Cyan ctermbg=Black cterm=reverse
        hi link LiningItem StatusLine
    endif

    hi link LiningLnCol   LiningBufName
    hi link LiningVertSep LiningItem
endif

hi LiningWarn  ctermbg=Brown ctermfg=Yellow
hi LiningError ctermbg=Red   ctermfg=White

hi Search   guibg=#0066cc  guifg=white    gui=none ctermbg=4 ctermfg=white
hi MatchParen guibg=#557799  guifg=white    gui=none ctermbg=6 ctermfg=15
hi Operator guibg=#557799  guifg=white    gui=none ctermbg=6 ctermfg=15
hi PreProc guibg=#557799  guifg=white    gui=none ctermbg=6 ctermfg=15
hi ColorColumn guibg=#557799  guifg=white    gui=none ctermbg=6 ctermfg=15


hi link LiningVcsInfo LiningItem

hi link String         Constant
hi link Character      Constant
hi link Number         Constant
hi link Boolean        Constant
hi link Float          Number
hi link Conditional    Repeat
hi link Label          Statement
hi link Keyword        Statement
hi link Exception      Statement
hi link Include        PreProc
hi link Define         PreProc
hi link Macro          PreProc
hi link PreCondit      PreProc
hi link StorageClass   Type
hi link Structure      Type
hi link Typedef        Type
hi link Tag            Special
hi link SpecialChar    Special
hi link Delimiter      Special
hi link SpecialComment Special
hi link Debug          Special
