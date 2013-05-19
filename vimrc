set encoding=utf-8
set nocompatible
filetype plugin indent on
"let &colorcolumn=join(range(80,999),",")
"set textwidth=78
"set formatoptions+=a set formatoptions+=n 

syntax on
colorscheme mustang
highlight ColorColumn ctermbg=235  guibg=#111111
set guifont=Monaco:h14
set ruler
set colorcolumn=80
set guioptions-=L
set number
set cursorline

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

"Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

let mapleader = ","
nmap <leader>v :tabedit $MYVIMRC<CR>
" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

