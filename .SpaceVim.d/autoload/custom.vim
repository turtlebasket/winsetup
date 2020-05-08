function! custom#after() abort
  set shiftwidth=4
  set tabstop=4
  set linebreak
  set autoindent
  set wrap
  set conceallevel=0
  " set autochdir
  autocmd BufEnter * silent! lcd %:p:h
endfunction
