    "...     ..      ..                                    ..                 
  "x*8888x.:*8888: -"888:                            < .z@8"`                 
 "X   48888X `8888H  8888                 u.    u.    !@88E                   
"X8x.  8888X  8888X  !888>       .u     x@88k u@88c.  '888E   u         .u    
"X8888 X8888  88888   "*8%-   ud8888.  ^"8888""8888"   888E u@8NL    ud8888.  
"'*888!X8888> X8888  xH8>   :888'8888.   8888  888R    888E`"88*"  :888'8888. 
  "`?8 `8888  X888X X888>   d888 '88%"   8888  888R    888E .dN.   d888 '88%" 
  "-^  '888"  X888  8888>   8888.+"      8888  888R    888E~8888   8888.+"    
   "dx '88~x. !88~  8888>   8888L        8888  888R    888E '888&  8888L      
 ".8888Xf.888x:!    X888X.: '8888c. .+  "*88*" 8888"   888E  9888. '8888c. .+ 
":""888":~"888"     `888*"   "88888%      ""   'Y"   '"888*" 4888"  "88888%   
    ""~'    "~        ""       "YP'                     ""    ""      "YP'    
                                                                             
                                                                             
                                                                             
    ".....                                                                     
 ".H8888888h.  ~-.                         .uef^"                              
 "888888888888x  `>                      :d88E          u.    u.          u.   
"X~     `?888888hx~      .u          .   `888E        x@88k u@88c.  ...ue888b  
"'      x8.^"*88*"    ud8888.   .udR88N   888E .z8k  ^"8888""8888"  888R Y888r 
 "`-:- X8888x       :888'8888. <888'888k  888E~?888L   8888  888R   888R I888> 
      "488888>      d888 '88%" 9888 'Y"   888E  888E   8888  888R   888R I888> 
    ".. `"88*       8888.+"    9888       888E  888E   8888  888R   888R I888> 
  "x88888nX"      . 8888L      9888       888E  888E   8888  888R  u8888cJ888  
 "!"*8888888n..  :  '8888c. .+ ?8888u../  888E  888E  "*88*" 8888"  "*888*P"   
"'    "*88888888*    "88888%    "8888P'  m888N= 888>    ""   'Y"      'Y"      
        "^"***"`       "YP'       "P'     `Y"   888                            
                                              "J88"                            
                                              "@%                              
                                            ":"                                
      "..                            .                  .x+=:.   
"x .d88"                            @88>               z`    ^%  
 "5888R          u.                 %8P                   .   <k 
 "'888R    ...ue888b       uL        .         .u       .@8Ned8" 
  "888R    888R Y888r  .ue888Nc..  .@88u    ud8888.   .@^%8888"  
  "888R    888R I888> d88E`"888E` ''888E` :888'8888. x88:  `)8b. 
  "888R    888R I888> 888E  888E    888E  d888 '88%" 8888N=*8888 
  "888R    888R I888> 888E  888E    888E  8888.+"     %8"    R88 
  "888R   u8888cJ888  888E  888E    888E  8888L        @8Wou 9%  
 ".888B .  "*888*P"   888& .888E    888&  '8888c. .+ .888888P`   
 "^*888%     'Y"      *888" 888&    R888"  "88888%   `   ^"F     
   ""%                 `"   "888E    ""      "YP'                
                     ".dWi   `88E                                
                     "4888~  J8%                                 
                      "^"===*"`                                  
" https://github.com/menketechnologies
"

" File: zpwrmarklar.vim
" Author: MenkeTechnologies
" Description: dark marklar
" Last Modified: April 15, 2020

hi clear
set background=dark
if exists("syntax_on")
    syntax reset
endif
let g:colors_name = "zpwrmarklar"

if !exists("s:main")

    " OPTIONS:
    let s:bold_opt = 0
    let s:ignore_opt = 1

    function! s:main()
        if version >= 700
            call s:apply_opts()
        endif

        if s:bold_opt
            let s:bold = 'bold'
        else
            let s:bold = 'NONE'
        endif

        if s:ignore_opt
            " completely invisible
            let s:ignore = 'bg'
        else
            " nearly invisible
            let s:ignore = '#467C5C'
        endif

        execute "hi Constant         guifg=#FFFFFF guibg=NONE                 ctermfg=7 ctermbg=6 cterm=NONE"
        execute "hi Identifier       guifg=#38FF56 guibg=NONE gui=".s:bold."  ctermfg=0"
        execute "hi Statement        guifg=#FFFF00 guibg=NONE gui=".s:bold."  ctermfg=7 ctermbg=4"
        execute "hi Special          guifg=#25B9F8 guibg=bg   gui=".s:bold."  ctermfg=2 cterm=underline ctermbg=Black"
        execute "hi PreProc          guifg=#FF80FF guibg=bg   gui=NONE        ctermfg=3 ctermbg=Black"
        execute "hi Type             guifg=#00FFFF guibg=NONE gui=".s:bold."  ctermfg=6 cterm=bold ctermbg=Black"

        execute "hi Ignore           guifg=".s:ignore." guibg=NONE               ctermfg=0"

        hi Comment          guifg=#00BBBB guibg=NONE               ctermfg=6 cterm=none ctermbg=Black
        hi Cursor           guifg=NONE    guibg=#FF0000
        hi DiffAdd          guifg=NONE    guibg=#136769            ctermfg=4 ctermbg=7
        hi DiffDelete       guifg=NONE    guibg=#50694A            ctermfg=1 ctermbg=7
        hi DiffChange       guifg=fg      guibg=#00463c gui=NONE   ctermfg=4 ctermbg=2
        hi DiffText         guifg=#7CFC94 guibg=#00463c gui=bold   ctermfg=4 ctermbg=3
        hi Directory        guifg=#25B9F8 guibg=NONE               ctermfg=2
        hi Error            guifg=#FFFFFF guibg=#000000            ctermfg=7 ctermbg=0 cterm=bold
        hi ErrorMsg         guifg=#8eff2e guibg=#204d40
        hi FoldColumn       guifg=#00BBBB guibg=#204d40 ctermbg=0
        hi Folded           guifg=#44DDDD guibg=#204d40            ctermfg=0 ctermbg=8 cterm=bold

        hi IncSearch        guibg=#52891f gui=bold
        hi LineNr           guifg=#38ff56 guibg=#204d40            ctermfg=8
        hi ModeMsg          guifg=#FFFFFF guibg=#0000FF            ctermfg=7 ctermbg=4 cterm=bold
        hi MoreMsg          guifg=#FFFFFF guibg=#00A261            ctermfg=7 ctermbg=2 cterm=bold
        hi NonText          guifg=#00bbbb guibg=#204d40
        hi Normal           guifg=#71C293 guibg=#06544a 
        hi Question         guifg=#FFFFFF guibg=#00A261
        hi Search           guifg=NONE    guibg=#0f374c            ctermfg=2 ctermbg=Black  cterm=bold

        hi SignColumn       guifg=#00BBBB guibg=#204d40 ctermbg=0
        hi SpecialKey       guifg=#00FFFF guibg=#266955
        hi StatusLine       guifg=#245748 guibg=#71C293 gui=NONE   cterm=reverse
        hi StatusLineNC     guifg=#245748 guibg=#689C7C gui=NONE
        hi Title            guifg=#7CFC94 guibg=NONE gui=bold      ctermfg=2 cterm=bold
        hi Todo             guifg=#FFFFFF guibg=#884400            ctermfg=6 ctermbg=4 cterm=NONE
        hi Underlined       guifg=#df820c guibg=NONE gui=underline ctermfg=8 cterm=underline
        hi Visual           guibg=#0B7260 gui=NONE
        hi WarningMsg       guifg=#FFFFFF guibg=#FF0000            ctermfg=7 ctermbg=1 cterm=bold
        hi WildMenu         guifg=#20012e guibg=#00a675 gui=bold   ctermfg=NONE ctermbg=NONE cterm=bold
        "
        if version >= 700
            hi SpellBad     guisp=#FF0000
            hi SpellCap     guisp=#0000FF
            hi SpellRare    guisp=#ff4046
            hi SpellLocal   guisp=#000000                          ctermbg=0
            hi Pmenu        guifg=#00ffff guibg=#000000            ctermbg=0 ctermfg=6
            hi PmenuSel     guifg=#ffff00 guibg=#000000 gui=bold   cterm=bold ctermfg=3
            hi PmenuSbar    guibg=#204d40                          ctermbg=6
            hi PmenuThumb   guifg=#38ff56                          ctermfg=3
            hi CursorColumn guibg=#096354
            hi CursorLine   guibg=#096354
            hi Tabline      guifg=bg      guibg=fg gui=NONE        cterm=reverse,bold ctermfg=NONE ctermbg=NONE
            hi TablineSel   guifg=#20012e guibg=#00a675 gui=bold
            hi TablineFill  guifg=#689C7C
            hi MatchParen   guifg=#38ff56 guibg=#0000ff gui=bold   ctermbg=4
        endif
        "
        hi Tag              guifg=#7CFC94 guibg=NONE gui=bold      ctermfg=2 cterm=bold
        hi link Bold Tag
        "
        hi pythonPreCondit                                         ctermfg=2 cterm=NONE
        execute "hi tkWidget         guifg=#ffa0a0 guibg=bg gui=".s:bold." ctermfg=7 cterm=bold"
    endfunction

    if version >= 700

        let s:opts = {'bold': 0, 'ignore': 1}

        " preserves vim<7 compat, while letting me reuses some code
        function! s:apply_opts()
            let s:bold_opt = s:opts['bold']
            let s:ignore_opt = s:opts['ignore']
        endfunction

        function! s:print_opts(...)
            let d = a:000
            if len(a:000) == 0
                let d = keys(s:opts)
            endif
            for k in d
                echo k.': '.s:opts[k]
            endfor
        endfunction

        function! s:Marklar(...)
            let args = a:000
            if len(args) == 0
                call s:print_opts()
            else
                while len(args)>0
                    " take first arg
                    let k = args[0]
                    let args = args[1:]
                    " is it a key?
                    if k =~ '\a\+!'
                        " does it bang?
                        let k = strpart(k,0,strlen(k)-1)
                        let s:opts[k] = !s:opts[k]
                        call s:main()
                    elseif k =~ '\a\+?'
                        " does it quiz?
                        let k = strpart(k,0,strlen(k)-1)
                        call s:print_opts(k)
                    elseif len(args)
                        " is there another arg?
                        " take it
                        let v = args[0]
                        let args = args[1:]
                        " is it legal value?
                        if v == 0 || v == 1
                            " assign val->key
                            let s:opts[k] = v
                            call s:main()
                        else
                            echoerr "(".v.") Bad value. Expected 0 or 1."
                        endif
                    else
                    endif
                endwhile
            endif
        endfunction
        command! -nargs=*  Marklar  :call s:Marklar(<f-args>)
    endif
endif

call s:main()
