let python_highlight_all=1
syntax on
set termguicolors
set linebreak
set tabstop=2
set shiftwidth=4
autocmd BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd BufNewFile,BufRead *.json set ft=javascript
filetype plugin indent on

