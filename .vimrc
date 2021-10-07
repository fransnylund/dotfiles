let mapleader = ","


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
inoremap <leader>s <Esc>:w<CR>
map <leader>s :w<CR>
map <leader>c :s,^,#,


" Set
set nocompatible
set background=dark
set clipboard=unnamedplus

" Show relative and current line number
set number relativenumber

" Set where tab should stop
set tabstop=4 softtabstop=4
set incsearch
set scrolloff=8
set wildmode=longest,list,full
set splitbelow splitright

" Turn off the bell
set noerrorbells
set viminfo='20,<1000,s1000

" Change how much >> shifts
set shiftwidth=2
