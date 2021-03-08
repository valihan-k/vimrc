set nocompatible

packadd! dracula

filetype plugin indent on
if !exists('g:syntax_on') | syntax enable | endif
set encoding=utf-8
scriptencoding utf-8

"set completeopt=menuone,noinsert,noselect,popuphidden
set completeopt=menuone,noinsert,popuphidden
set completepopup=highlight:Pmenu,border:off

set backspace=indent,eol,start
set expandtab
set shiftround
set shiftwidth=4
set softtabstop=-1
set tabstop=4
"set textwidth=120
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
"set nonumber
set noruler
set noshowmode
set signcolumn=yes

set mouse=a
set updatetime=1000

set lcs=trail:·
set list

set termguicolors
set background=dark

let g:dracula_italic = 0
colorscheme dracula

" ALE {
let g:ale_sign_error = '•'
let g:ale_sign_warning = '•'
let g:ale_sign_info = '·'
let g:ale_sign_style_error = '·'
let g:ale_sign_style_warning = '·'
let g:ale_linters =  { 'cs': ['OmniSharp'] }
" }

" asyncomplete {
let g:asyncomplete_auto_popup = 1
let g:asyncomplete_auto_completeopt = 0
" }

" OmniSharp {
let g:OmniSharp_popup_mappings  = {
\   'sigNext': '<C-n>',
\   'sigPrev': '<C-p>',
\   'lineDown': ['<C-e>', 'j'],
\   'lineUp': ['<C-y>', 'k']
\}

let g:OmniSharp_popup_position = 'peek'
let g:OmniSharp_popup_options = {
\   'highlight': 'Normal',
\   'padding': [0, 0, 0, 0],
\   'border': [1]
\}
" }

" Mappings {
let mapleader=","
imap jk <Esc>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

augroup omnisharp_commands
    autocmd!

    " contextual commands, base on the cursor position
    autocmd FileType cs nmap <silent> <buffer> <Leader>osgd <Plug>(omnisharp_go_to_definition)
    autocmd FileType cs nmap <silent> <buffer> <Leader>osfu <Plug>(omnisharp_find_usages)
    autocmd FileType cs nmap <silent> <buffer> <Leader>osfi <Plug>(omnisharp_find_implementations)
    autocmd FileType cs nmap <silent> <buffer> <Leader>ospd <Plug>(omnisharp_preview_definition)
    autocmd FileType cs nmap <silent> <buffer> <Leader>ospi <Plug>(omnisharp_preview_implementations)
    autocmd FileType cs nmap <silent> <buffer> <Leader>ost <Plug>(omnisharp_type_lookup)
    autocmd FileType cs nmap <silent> <buffer> <Leader>osd <Plug>(omnisharp_documentation)
    autocmd FileType cs nmap <silent> <buffer> <Leader>osfs <Plug>(omnisharp_find_symbol)
    autocmd FileType cs nmap <silent> <buffer> <Leader>osfx <Plug>(omnisharp_fix_usings)
    autocmd FileType cs nmap <silent> <buffer> <C-\> <Plug>(omnisharp_signature_help)
    autocmd FileType cs imap <silent> <buffer> <C-\> <Plug>(omnisharp_signature_help)

    " Navigate up and down by method/property/field
    autocmd FileType cs nmap <silent> <buffer> [[ <Plug>(omnisharp_navigate_up)
    autocmd FileType cs nmap <silent> <buffer> ]] <Plug>(omnisharp_navigate_down)

    " Find all code errors/warnings for the current solution and populate the quickfix window
    autocmd FileType cs nmap <silent> <buffer> <Leader>osgcc <Plug>(omnisharp_global_code_check)

    " Contextual code actions (uses fzf, vim-clap, CtrlP or unite.vim selector when available)
    autocmd FileType cs nmap <silent> <buffer> <Leader>osca <Plug>(omnisharp_code_actions)
    autocmd FileType cs xmap <silent> <buffer> <Leader>osca <Plug>(omnisharp_code_actions)

    " Repeat the last code action performed (does not use a selector)
    autocmd FileType cs nmap <silent> <buffer> <Leader>os. <Plug>(omnisharp_code_action_repeat)
    autocmd FileType cs xmap <silent> <buffer> <Leader>os. <Plug>(omnisharp_code_action_repeat)

    autocmd FileType cs nmap <silent> <buffer> <Leader>os= <Plug>(omnisharp_code_format)

    autocmd FileType cs nmap <silent> <buffer> <Leader>osnm <Plug>(omnisharp_rename)

    autocmd FileType cs nmap <silent> <buffer> <Leader>osre <Plug>(omnisharp_restart_server)
    autocmd FileType cs nmap <silent> <buffer> <Leader>osst <Plug>(omnisharp_start_server)
    autocmd FileType cs nmap <silent> <buffer> <Leader>ossp <Plug>(omnisharp_stop_server)
augroup END
" }
