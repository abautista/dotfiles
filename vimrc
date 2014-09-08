" Basic options {{{
set nocompatible
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
colorscheme mustang                              " colorscheme
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
Plugin 'tomasr/molokai'
Plugin 'godlygeek/tabular'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-rails'
Plugin 'Shougo/neocomplete.vim'
Plugin 'davidhalter/jedi-vim'
call vundle#end()

filetype off
filetype plugin indent on

if iCanHazVundle == 0
  echo "Installing Bundles, please ignore key map error messages"
  echo ""
  :BundleInstall
endif
" }}}
" Neocomplete {{{ 
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#enable_refresh_always = 1
let g:neocomplete#sources#syntax#min_keyword_length = 1
let g:neocomplete#max_list = 30

let g:jedi#completions_enabled = 1 
let g:jedi#auto_vim_configuration = 1
let g:jedi#popup_select_first = 0

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType python setlocal omnifunc=jedi#completions

if !exists('g:neocomplete#force_omni_input_patterns')
  let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_omni_input_patterns.python = '\h\w*\|[^. \t]\.\w*'
autocmd FileType python setlocal completeopt-=preview
let g:jedi#use_tabs_not_buffers = 0
let g:jedi#popup_on_dot = 0

" }}}
" Mappings {{{
let mapleader = ","
nnoremap <leader>v :tabedit $MYVIMRC<CR>
nnoremap <leader>t <C-w>v<C-w>l
nnoremap <Space> za
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <D-1> :NERDTreeToggle<CR> 
" }}}

" vim:foldmethod=marker:foldlevel=0
