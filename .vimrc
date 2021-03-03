set nocompatible
filetype plugin indent on

packadd! dracula

"colorscheme dracula

if !exists('g:syntax_on') | syntax enable | endif
set encoding=utf-8
scriptencoding utf-8

let mapleader=","
imap jk <Esc>

set backspace=indent,eol,start
set expandtab
set shiftround
set shiftwidth=4
set softtabstop=-1
set tabstop=4
set title

set hidden
set nofixendofline
set nostartofline
set splitbelow
set splitright

set number relativenumber

set hlsearch
set incsearch
set laststatus=2
set noruler
set noshowmode
set signcolumn=yes

set mouse=a
set updatetime=1000

set lcs=trail:·
set list

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
