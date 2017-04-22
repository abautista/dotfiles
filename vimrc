" Basic options {{{
set nocompatible
set backspace=2
set encoding=utf-8
" }}}
" UI options {{{
set colorcolumn=80                               " show vertical ruler
set number                                       " show line numbers
set cursorline                                   " highlight current line
set visualbell                                   " no bell please
set laststatus=2                                 " always show line status
set guifont=Monaco:h12                           " font macvim
set guioptions-=L                                " hide left hand scrollbar
set guioptions-=r                                " hide right hand scrollbar
syntax on                                        " turn on syntax coloring
highlight ColorColumn ctermbg=235  guibg=#111111 " color of vertical ruler
" }}}
" Spaces & Tabs {{{
set tabstop=2     " 2 space tab
set softtabstop=2 " 2 space tab
set expandtab     " use spaces for tabs
set shiftwidth=2
set modelines=1
 " }}}
" Vundle and Plugins {{{
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
Plugin 'SirVer/ultisnips'
Plugin 'kien/ctrlp.vim'
Plugin 'godlygeek/tabular'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-endwise'
call vundle#end()

filetype off
filetype plugin indent on

if iCanHazVundle == 0
  echo "Installing Bundles, please ignore key map error messages"
  echo ""
  :BundleInstall
endif
"  }}}
" Mappings {{{
let mapleader = ","
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

nnoremap <leader>v :tabedit $MYVIMRC<CR>
nnoremap <leader>t <C-w>v<C-w>l
nnoremap <Space> za
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <Leader>. :exe "vertical resize +5"<CR>
nnoremap <Leader>- :exe "vertical resize -5"<CR>

autocmd FileType python setlocal completeopt-=preview
" }}}

" vim:foldmethod=marker:foldlevel=0
