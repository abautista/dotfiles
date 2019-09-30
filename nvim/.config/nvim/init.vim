packadd minpac
call minpac#init()
call minpac#add('plasticboy/vim-markdown')
call minpac#add('alok/notational-fzf-vim')
call minpac#add('junegunn/fzf')

set softtabstop=2
set tabstop=2
set expandtab
set shiftwidth=4

let mapleader = ','
let g:nv_search_paths=['~/notebooks']
let g:vim_markdown_folding_disabled = 1


nnoremap <silent>[b :bprevious<CR>
nnoremap <silent>]b :bnext<CR>
nnoremap <silent>[B :bfirst<CR>
nnoremap <silent>]B :blast<CR>
nnoremap <Leader>gt :e ~/notebooks/<C-r>=strftime('%Y%m%d%H%M%S') . '.md'<CR><CR>G
nnoremap <Leader>nv :NV<CR>
