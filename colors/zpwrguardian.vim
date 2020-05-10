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

" File: zpwrguardian.vim
" Author: MenkeTechnologies
" Description: transparent guardian
" Last Modified: April 15, 2020

set background=dark

"{{{                    MARK:Reset
"**************************************************************
hi clear
syntax reset
"}}}***********************************************************


hi Cursor      guibg=#cc4455  guifg=white    gui=bold ctermbg=4 ctermfg=15
hi link CursorIM Cursor

"{{{                    MARK:Transparent BG
"**************************************************************
hi Normal      guibg=#332211  guifg=white    gui=none ctermfg=15
"}}}***********************************************************

"{{{                    MARK:Rest
"**************************************************************
hi NonText     guibg=#445566  guifg=#ffeecc  gui=bold ctermbg=8 ctermfg=14
hi Visual      guibg=#557799  guifg=white    gui=none ctermbg=6 ctermfg=15

hi Linenr      guibg=black	      guifg=#aaaaaa  gui=none ctermbg=black ctermfg=7

hi Directory   guibg=black	      guifg=#337700  gui=none ctermbg=black ctermfg=10

hi IncSearch   guibg=#0066cc  guifg=white    gui=none ctermbg=1 ctermfg=15

hi SpecialKey  guibg=black	guifg=fg       gui=none ctermbg=black ctermfg=fg
hi Titled      guibg=black	guifg=fg       gui=none ctermbg=black ctermfg=fg

hi ErrorMsg    guibg=black	guifg=#ff0000  gui=bold ctermbg=black ctermfg=12
hi ModeMsg     guibg=black	guifg=#ffeecc  gui=none ctermbg=black ctermfg=14
hi link	 MoreMsg     ModeMsg
hi Question    guibg=black	guifg=#ccffcc  gui=bold ctermbg=black ctermfg=10
hi link	 WarningMsg  ErrorMsg

hi StatusLine	  guibg=#ffeecc	 guifg=black	gui=bold ctermbg=14 ctermfg=0
hi StatusLineNC	  guibg=#cc4455	 guifg=white	gui=none ctermbg=4  ctermfg=11
hi VertSplit	  guibg=#cc4455	 guifg=white	gui=none ctermbg=4  ctermfg=11

hi DiffAdd     guibg=#446688  guifg=fg	  gui=none ctermbg=1 ctermfg=fg
hi DiffChange  guibg=#558855  guifg=fg	  gui=none ctermbg=2 ctermfg=fg
hi DiffDelete  guibg=#884444  guifg=fg	  gui=none ctermbg=4 ctermfg=fg
hi DiffText    guibg=#884444  guifg=fg	  gui=bold ctermbg=4 ctermfg=fg

" Colors for Syntax Highlighting.

hi Comment  guibg=#334455  guifg=#dddddd  gui=none    ctermbg=8	  ctermfg=7

hi Constant    guibg=black	   guifg=white	  gui=bold    ctermbg=8	  ctermfg=15
hi String      guibg=black	   guifg=#ffffcc  gui=italic  ctermbg=black  ctermfg=14
hi Character   guibg=black	   guifg=#ffffcc  gui=bold    ctermbg=black  ctermfg=14
hi Number      guibg=black	   guifg=#bbddff  gui=bold    ctermbg=1   ctermfg=15
hi Boolean     guibg=black	   guifg=#bbddff  gui=none    ctermbg=1   ctermfg=15
hi Float       guibg=black	   guifg=#bbddff  gui=bold    ctermbg=1   ctermfg=15

hi Identifier  guibg=black    guifg=#ffddaa  gui=bold    ctermbg=black  ctermfg=12
hi Function    guibg=black    guifg=#ffddaa  gui=bold    ctermbg=black  ctermfg=12
hi Statement   guibg=black    guifg=#ffffcc  gui=bold    ctermbg=black  ctermfg=14

hi Conditional guibg=black    guifg=#ff6666  gui=bold    ctermbg=black  ctermfg=12
hi Repeat      guibg=black    guifg=#ff9900  gui=bold    ctermbg=4   ctermfg=14
hi Label       guibg=black    guifg=#ffccff  gui=bold    ctermbg=black   ctermfg=13
hi Operator    guibg=black    guifg=#cc9966  gui=bold    ctermbg=6   ctermfg=15
hi Keyword     guibg=black	   guifg=#66ffcc  gui=bold    ctermbg=black  ctermfg=10
hi Exception   guibg=black	   guifg=#66ffcc  gui=bold    ctermbg=black  ctermfg=10

hi PreProc	  guibg=black	 guifg=#ffcc99	gui=bold ctermbg=4  ctermfg=14
hi Include	  guibg=black	 guifg=#99cc99	gui=bold ctermbg=black ctermfg=10
hi link Define	  Include
hi link Macro	  Include
hi link PreCondit Include

hi Type		  guibg=black	 guifg=#ff7788  gui=bold    ctermbg=black	ctermfg=12
hi StorageClass	  guibg=black	 guifg=#99cc99  gui=bold    ctermbg=black	ctermfg=10
hi Structure	  guibg=black	 guifg=#99ff99  gui=bold    ctermbg=black	ctermfg=10
hi Typedef	  guibg=black	 guifg=#99cc99  gui=italic  ctermbg=black	ctermfg=10

hi Special	  guibg=black	 guifg=#bbddff	gui=bold    ctermbg=1	ctermfg=15
hi SpecialChar	  guibg=black	 guifg=#bbddff	gui=bold    ctermbg=1	ctermfg=15
hi Tag		  guibg=black	 guifg=#bbddff	gui=bold    ctermbg=1	ctermfg=15
hi Delimiter	  guibg=black	 guifg=fg	gui=bold    ctermbg=1	ctermfg=fg
hi SpecialComment guibg=#334455	 guifg=#dddddd	gui=italic  ctermbg=1	ctermfg=15
hi Debug	  guibg=black	 guifg=#ff9999	gui=none    ctermbg=8	ctermfg=12

hi Underlined guibg=black guifg=#99ccff gui=underline ctermbg=black ctermfg=9 cterm=underline

hi Title    guibg=#445566  guifg=white	  gui=bold    ctermbg=1	  ctermfg=15
hi Ignore   guibg=black	   guifg=#cccccc  gui=italic  ctermbg=black  ctermfg=8
hi Error    guibg=#ff0000  guifg=white	  gui=bold    ctermbg=12  ctermfg=15
hi Todo	    guibg=#556677  guifg=#ff0000  gui=bold    ctermbg=1	  ctermfg=12


"{{{                    MARK:Mod
"**************************************************************
set cursorline
highlight CursorLine NONE

highlight CursorLine ctermbg=233

hi Search   guibg=#0066cc  guifg=white    gui=none ctermbg=5 ctermfg=15
hi ColorColumn guibg=#557799  guifg=white    gui=none ctermbg=6 ctermfg=15
hi Todo guibg=#557799  guifg=white    gui=none ctermbg=6 ctermfg=15
hi CursorLineNr  ctermbg=235 ctermfg=246
hi LineNr        ctermbg=234 ctermfg=238

"}}}***********************************************************



hi htmlH2 guibg=black guifg=fg gui=bold ctermbg=8 ctermfg=fg
hi link htmlH3 htmlH2
hi link htmlH4 htmlH3
hi link htmlH5 htmlH4
hi link htmlH6 htmlH5

"}}}***********************************************************

"{{{                    MARK:Colorscheme name
"**************************************************************
let g:colors_name = "zpwrguardian"
let colors_name   = "zpwrguardian"
"}}}***********************************************************

