packadd minpac
call minpac#init()
call minpac#add('plasticboy/vim-markdown')
call minpac#add('alok/notational-fzf-vim')
call minpac#add('junegunn/fzf')

set softtabstop=2
set tabstop=2
set expandtab
set shiftwidth=4

let g:nv_search_paths=['~/notebooks/notes', '~/notebooks/books']
let g:vim_markdown_folding_disabled = 1

