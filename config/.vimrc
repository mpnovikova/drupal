set background=light
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
set number
set formatoptions=r

if has("autocmd")
  " Drupal *.module and *.install files.
  augroup module
    autocmd BufRead,BufNewFile *.module set filetype=php
    autocmd BufRead,BufNewFile *.install set filetype=php
    autocmd BufRead,BufNewFile *.test set filetype=php
    autocmd BufRead,BufNewFile *.inc set filetype=php
    autocmd BufRead,BufNewFile *.profile set filetype=php
    autocmd BufRead,BufNewFile *.view set filetype=php
  augroup END
  autocmd BufWritePre *.module,*.install,*.inc,*.test,*.profile,*.view :%s/\s\+$//e
endif

syntax on
