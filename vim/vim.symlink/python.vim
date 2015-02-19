set ft=python

set nocursorline
set backspace=indent,eol,start    "Make backspaces delete sensibly
set autoindent                    "Preserve current indent on new lines

" from http://wiki.python.org/moin/Vim
syntax on
filetype indent plugin on
set expandtab
set tabstop=4
set shiftwidth=4 
set softtabstop=4

" from http://www.vex.net/~x/python_and_vim.html
set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

