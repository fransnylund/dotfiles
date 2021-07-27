let mapleader = " "

syntax on
filetype plugin indent on
set background=dark

imap jj <Esc> 
map <leader>o :setlocal spell! spelllang=es_us<CR>
map <leader>c :!pdflatex %<CR><CR>
inoremap <C-s> <C-o>:w<CR>
map <C-s> :w<CR>


set clipboard=unnamedplus
set number relativenumber
set tabstop=4 softtabstop=4
set incsearch
set scrolloff=8
set wildmode=longest,list,full
set splitbelow splitright
