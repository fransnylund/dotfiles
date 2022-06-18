let mapleader = "-"

" Plugins
"call plug#begin()

"Plug 'sheerun/vim-polyglot'
"Plug 'scrooloose/NERDTree'
"Plug 'jiangmiao/auto-pairs'

"call plug#end()

syntax on
filetype plugin indent on

let g:netrw_liststyle=3
let g:netrw_banner = 0



" Mappings
map <leader>c :set spell!<CR>
map <leader>C :!pdflatex %<CR><CR>
inoremap <c-s> <Esc>:w<CR>
map <c-s> :w<CR>
map <leader># :s,^,#,
inoremap <CR> <Esc>
nnoremap <CR> <Esc>
inoremap <BS> <Esc>
nnoremap <BS> <Esc>
map Q gq


" Set
set nocompatible
set background=dark
set clipboard=unnamedplus

" Show relative and current line number
set number relativenumber

" Set where tab should stop
set tabstop=4 softtabstop=4
set incsearch
"set hlsearch
set scrolloff=8
set wildmode=longest,list,full
set splitbelow splitright

" Turn off the bell
set noerrorbells
set viminfo='20,<1000,s1000

" Change how much >> shifts
set shiftwidth=4

" Search recursively through the current dir when using find
set path+=**

" Remove the delay when pressing ESC 
set ttimeoutlen=0

" Define the width of that gq formats
set textwidth=65
