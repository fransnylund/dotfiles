let mapleader = " "

call plug#begin()

Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/NERDTree'
Plug 'jiangmiao/auto-pairs'

call plug#end()

syntax on
filetype plugin indent on
set background=dark

map <leader>s :set spell!<CR>
map <leader>c :!pdflatex %<CR><CR>
inoremap <C-s> <Esc>:w<CR>
map <C-s> :w<CR>

set clipboard=unnamedplus
set number relativenumber
set tabstop=4 softtabstop=4
set incsearch
set scrolloff=8
set wildmode=longest,list,full
set splitbelow splitright
set noerrorbells
