" Preamble
set nocompatible
set encoding=utf-8

" Setting up Vundle - the vim plugin bundler
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
call vundle#begin()

Plugin 'gmarik/vundle'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'SirVer/ultisnips'
Plugin 'kien/ctrlp.vim'
Plugin 'tomasr/molokai'

call vundle#end()

filetype off
filetype plugin indent on

if iCanHazVundle == 0
  echo "Installing Bundles, please ignore key map error messages"
  echo ""
  :BundleInstall
endif

" Basic options 
syntax on
colorscheme mustang
highlight ColorColumn ctermbg=235  guibg=#111111
set guifont=Monaco:h14
set ruler
set colorcolumn=80
set guioptions-=L
set number
set cursorline
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Convenience mappings
let mapleader = ","
nmap <leader>v :tabedit $MYVIMRC<CR>
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
noremap <C-n> :NERDTreeToggle<CR> 
