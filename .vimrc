let mapleader = " "


" Plugins
call plug#begin()

Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/NERDTree'
Plug 'jiangmiao/auto-pairs'

call plug#end()

syntax on
filetype plugin indent on


" Mappings
map <leader>s :set spell!<CR>
map <leader>c :!pdflatex %<CR><CR>
inoremap <C-s> <Esc>:w<CR>
map <C-s> :w<CR>


" Set
set nocompatible
set background=dark
set clipboard=unnamedplus
set number relativenumber
set tabstop=4 softtabstop=4
set incsearch
set scrolloff=8
set wildmode=longest,list,full
set splitbelow splitright
set noerrorbells
set viminfo='20,<1000,s1000
