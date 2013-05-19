set encoding=utf-8
set nocompatible
filetype off
filetype plugin indent on
"let &colorcolumn=join(range(80,999),",")
"set textwidth=78
"set formatoptions+=a set formatoptions+=n 

let mapleader = ","
nmap <leader>v :tabedit $MYVIMRC<CR>
" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

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

let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
    echo "Installing Vundle.."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
    let iCanHazVundle=0
endif

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"Add your bundles here
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-surround'
Bundle 'SirVer/ultisnips'
Bundle 'kien/ctrlp.vim'
Bundle 'tomasr/molokai'

if iCanHazVundle == 0
    echo "Installing Bundles, please ignore key map error messages"
    echo ""
    :BundleInstall
endif
