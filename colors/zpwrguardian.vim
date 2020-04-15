                                                       "..          .    
                                                     "dF           @88>  
               "x.    .                    .u    .   '88bu.        %8P   
     "uL      .@88k  z88u         u      .d88B :@8c  '*88888bu      .    
 ".ue888Nc.. ~"8888 ^8888      us888u.  ="8888f8888r   ^"*8888N   .@88u  
"d88E`"888E`   8888  888R   .@88 "8888"   4888>'88"   beWE "888L ''888E` 
"888E  888E    8888  888R   9888  9888    4888> '     888E  888E   888E  
"888E  888E    8888  888R   9888  9888    4888>       888E  888E   888E  
"888E  888E    8888 ,888B . 9888  9888   .d888L .+    888E  888F   888E  
"888& .888E   "8888Y 8888"  9888  9888   ^"8888*"    .888N..888    888&  
"*888" 888&    `Y"   'YP    "888*""888"     "Y"       `"888*""     R888" 
 "`"   "888E                 ^Y"   ^Y'                   ""         ""   
".dWi   `88E                                                             
"4888~  J8%                                                              
 "^"===*"`                                                               
"                          
"                          
               "u.    u.   
      "u      x@88k u@88c. 
   "us888u.  ^"8888""8888" 
".@88 "8888"   8888  888R  
"9888  9888    8888  888R  
"9888  9888    8888  888R  
"9888  9888    8888  888R  
"9888  9888   "*88*" 8888" 
""888*""888"    ""   'Y"   
 "^Y"   ^Y'                
"
" https://github.com/menketechnologies
"

" File: guardianopacity.vim
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
let g:colors_name = "Guardianopacity"
let colors_name   = "Guardianopacity"
"}}}***********************************************************

