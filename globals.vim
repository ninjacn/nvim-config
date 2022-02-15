scriptencoding = 'utf-8'

syntax on

set number

"set relativenumber

set background=dark

set tabstop=4

set softtabstop=4

set expandtab

set shiftwidth=4

set encoding=utf-8

set linebreak

set showbreak=↲

set hlsearch

set cursorline

set cursorcolumn

set clipboard=unnamed

set noswapfile

set nobackup

let mapleader = ","

nnoremap <silent><Leader>w <Esc>:w<CR>

nnoremap <silent><Leader>q <Esc>:q<CR>

"Blade PHP
au BufRead,BufNewFile *.blade.php set filetype=html

