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

" File: zpwrpride.vim
" Author: MenkeTechnologies
" Description: black pride
" Last Modified: April 15, 2020

hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "pride"
if !exists('g:pride_background') 
  let g:pride_background=233
endif

" remove styles defined by src/syntax.c
hi clear SpecialKey
hi clear NonText
hi clear Directory
hi clear ErrorMsg
hi clear IncSearch
hi clear Search
hi clear MoreMsg
hi clear ModeMsg
hi clear LineNr
hi clear CursorLineNr
hi clear Question
hi clear StatusLine
hi clear StatusLineNC
hi clear VertSplit
hi clear Title
hi clear Visual
hi clear VisualNOS
hi clear WarningMsg
hi clear WildMenu
hi clear Folded
hi clear FoldColumn
hi clear DiffAdd
hi clear DiffChange
hi clear DiffDelete
hi clear DiffText
hi clear SignColumn
hi clear Conceal
hi clear SpellBad
hi clear SpellCap
hi clear SpellRare
hi clear SpellLocal
hi clear Pmenu
hi clear PmenuSel
hi clear PmenuSbar
hi clear PmenuThumb
hi clear TabLine
hi clear TabLineSel
hi clear TabLineFill
hi clear CursorColumn
hi clear CursorLine
hi clear ColorColumn
hi clear MatchParen
hi clear Comment
hi clear Constant
hi clear Special
hi clear Identifier
hi clear Statement
hi clear PreProc
hi clear Type
hi clear Underlined
hi clear Ignore
hi clear Error
hi clear Todo

" definitions
""""""""""""""
execute printf("hi Normal ctermbg=None")
execute printf("hi Subtle ctermfg=%s ctermbg=%s", g:pride_background + 3, 'None')
execute printf("hi Highlight ctermbg=%s", g:pride_background + 1)
execute printf("hi HighlightSubtle ctermbg=%s ctermfg=%s", g:pride_background + 1, g:pride_background + 2)
execute printf("hi Invisible ctermfg=%s", g:pride_background)
if exists('g:pride_panels') 
  execute printf("hi Panel ctermbg=%s ctermfg=%s", g:pride_background + 1, g:pride_background + 5)
  execute printf("hi PanelHighlight ctermbg=%s ctermfg=%s", g:pride_background + 2, g:pride_background + 6)
else
  execute printf("hi Panel ctermbg=%s ctermfg=%s", g:pride_background, g:pride_background + 5)
  execute printf("hi PanelHighlight ctermbg=%s ctermfg=%s", g:pride_background, g:pride_background + 6)
endif

hi White ctermfg=255 ctermbg=Black
hi Grey ctermfg=240 ctermbg=None
hi Red ctermfg=204 ctermbg=Black
hi RedInvert ctermbg=204 ctermfg=234
hi Orange ctermfg=209 ctermbg=Black
hi OrangeInvert ctermfg=234 ctermbg=209
hi Yellow ctermfg=221 ctermbg=Black
hi YellowInvert ctermfg=234 ctermbg=221
hi Green ctermfg=114 ctermbg=Black
hi GreenInvert ctermfg=234 ctermbg=114
hi Blue ctermfg=74 ctermbg=Black
hi BlueInvert ctermfg=234 ctermbg=74
hi Purple ctermfg=176 ctermbg=Black
hi PurpleInvert ctermfg=234 ctermfg=176

" interface
""""""""""""

hi li NonText Invisible

hi li CursorLine Highlight

hi li Visual Highlight


hi li LineNr Subtle
hi li CursorLineNr HighlightSubtle

hi li StatusLine Panel
hi li StatusLineNC Panel
hi li Tabline Panel
hi li TablineFill Panel
hi li TabLineSel PanelHighlight
hi li Pmenu Panel

hi li PmenuSel RedInvert

hi li Search RedInvert
hi li IncSearch RedInvert

hi li MatchParen RedInvert

hi li WildMenu RedInvert

hi li DiffAdd GreenInvert
hi li DiffChange OrangeInvert
hi li DiffDelete RedInvert
hi li DiffText BlueInvert

" general syntax
"""""""""""""""""

hi li Comment Grey
hi li Noise Grey

hi li Statement Red
hi li Error Red
hi li Ignore Red

hi li String Orange

hi li Type Yellow
hi li Special Yellow

hi li Character Green
hi li Constant Green
hi li Directory Green
hi li PreProc Green
hi li Identifier Green

hi li Conditional Blue
hi li Repeat Blue
hi li Folded Blue

hi li Boolean Purple
hi li Integer Purple
hi li Number Purple
hi li Todo Purple

" dialect specific syntax
""""""""""""""""""""""""""

hi li rubyRegexp Blue
hi li rubyRegexpSpecial Purple 
hi li rubyRegexpDelimiter Red
hi li rubyStringDelimiter Orange

hi li netrwComma Blue
hi li netrwClassify Green

hi li gitcommitFile Orange
hi li gitcommitBranch Blue
