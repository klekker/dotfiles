"############################################################################
"#    Vim config (Recommended) from Appendix C of "Perl Best Practices"     #
"#     Copyright (c) O'Reilly & Associates, 2005. All Rights Reserved.      #
"#  See: http://www.oreilly.com/pub/a/oreilly/ask_tim/2001/codepolicy.html  #
"############################################################################

set autoindent                    "Preserve current indent on new lines
set textwidth=78                  "Wrap at this column
set backspace=indent,eol,start    "Make backspaces delete sensibly
 
set tabstop=4                     "Indentation levels every four columns
set expandtab                     "Convert all tabs typed to spaces
set shiftwidth=4                  "Indent/outdent by four columns
set shiftround                    "Indent/outdent to nearest tabstop
 
set matchpairs+=<:>               "Allow % to bounce between angles too
set showmatch
 
"Inserting these abbreviations inserts the corresponding Perl statement...
iab phdr  #! /usr/bin/perl<CR><BS><CR>use strict;<CR>use warnings;<CR><CR>
iab pdbg  use Data::Dumper 'Dumper';warn Dumper [];hi
iab pbmk  use Benchmark qw( cmpthese );cmpthese -10, {};O     
iab pusc  use Smart::Comments;### 
iab putm  use Test::More qw( no_plan );
 

"set foldmethod=indent
"set foldmethod=syntax


" Comment/uncomment something with \[cC].
map <Leader>c :s/^/# /<cr>:nohlsearch<cr>
map <Leader>C :s/^# //<cr>:nohlsearch<cr>


"If your '{' or '}' are not in the first column, and you would like to use "[["
"and "]]" anyway, try these mappings: >
:map [[ ?{<CR>w99[{
:map ][ /}<CR>b99]}
:map ]] j0[[%/{<CR>
:map [] k$][%?}<CR>
":help [[ 


set isfname-=-
set iskeyword-=:
" Allow gf to work with modules
set isfname+=:
set include=\\<\\(use\\\|require\\)\\>
set includeexpr=substitute(substitute(v:fname,'::','/','g'),'$','.pm','')
let &path=&path . "," . substitute($PERL5LIB, ':', ',', 'g')



" http://vim.wikia.com/wiki/Auto-fold_Perl_subs
function! GetPerlFold()
  if getline(v:lnum) =~ '^\s*sub\s'
    return ">1"
  elseif getline(v:lnum) =~ '\}\s*$'
    let my_perlnum = v:lnum
    let my_perlmax = line("$")
    while (1)
      let my_perlnum = my_perlnum + 1
      if my_perlnum > my_perlmax
        return "<1"
      endif
      let my_perldata = getline(my_perlnum)
      if my_perldata =~ '^\s*\(\#.*\)\?$'
        " do nothing
      elseif my_perldata =~ '^\s*sub\s'
        return "<1"
      else
        return "="
      endif
    endwhile
  else
    return "="
  endif
endfunction
"setlocal foldexpr=GetPerlFold()
"setlocal foldmethod=expr
