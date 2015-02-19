" Vim color file

"Inspired by the default color-scheme

" Set 'background' back to the default.  The value can't always be estimated
" and is then guessed.
hi clear Normal
set bg&

" Remove all existing highlighting and set the defaults.
hi clear

" Load the syntax highlighting defaults, if it's enabled.
if exists("syntax_on")
  syntax reset
endif
" help cterm-colors
"        NR-16   NR-8    COLOR NAME ~
"        0        0        Black
"        1        4        DarkBlue
"        2        2        DarkGreen
"        3        6        DarkCyan
"        4        1        DarkRed
"        5        5        DarkMagenta
"        6        3        Brown, DarkYellow
"        7        7        LightGray, LightGrey, Gray, Grey
"        8        0*        DarkGray, DarkGrey
"        9        4*        Blue, LightBlue
"        10        2*        Green, LightGreen
"        11        6*        Cyan, LightCyan
"        12        1*        Red, LightRed
"        13        5*        Magenta, LightMagenta
"        14        3*        Yellow, LightYellow
"        15        7*        White

let colors_name = "mycolors"

hi Comment       ctermfg=Red        ctermbg=White
hi Normal        ctermfg=Black
hi Constant      ctermfg=DarkRed 
hi Statement     ctermfg=DarkGrey
hi Identifier    ctermfg=Black
hi Function      ctermfg=DarkGrey  ctermbg=White
hi PreProc       ctermfg=DarkGrey
hi Operator      ctermfg=DarkGrey
hi Type          ctermfg=Black
"hi LineNr        ctermfg=Brown  ctermbg=Black cterm=bold
hi LineNr        ctermfg=Black cterm=bold,reverse


hi Special  term=bold        ctermfg=Darkred    guifg=Red
hi Ignore   ctermfg=black        guifg=bg
hi Error    ctermbg=Red ctermfg=White guibg=Red guifg=White
"hi Todo     ctermbg=Yellow ctermfg=Black guifg=Blue guibg=Yellow
hi Todo     ctermbg=Green ctermfg=Black cterm=bold

" Perl
hi perlPOD ctermfg=DarkGreen ctermbg=White

" Common groups that link to default highlighting.
" You can specify other highlighting easily.
hi link String    Constant
hi link Character    Constant
hi link Number    Constant
hi link Boolean    Constant
hi link Float        Number
hi link Conditional    Repeat
hi link Label        Statement
hi link Keyword    Statement
hi link Exception    Statement
hi link Include    PreProc
hi link Define    PreProc
hi link Macro        PreProc
hi link PreCondit    PreProc
hi link StorageClass    Type
hi link Structure    Type
hi link Typedef    Type
hi link Tag        Special
hi link SpecialChar    Special
hi link Delimiter    Special
hi link SpecialComment Special
hi link Debug        Special
hi link Repeat Statement
" vim: sw=2
