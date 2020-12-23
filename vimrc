" .vimrc~
" Author: LibreNovus
"
"
" Preamble {{{
filetype off
filetype plugin indent on
set nocompatible
" }}}
" Options {{{
set encoding=utf-8
set modelines=0
set autoindent
set showmode
set showcmd
set hidden
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set nonumber
set norelativenumber
set laststatus=2
set history=1000
set undofile
set undoreload=10000
set lazyredraw
set matchtime=3
set splitbelow
set splitright
set ttimeout
set notimeout
set nottimeout
set autowrite
set shiftround
set autoread
set title
set linebreak
set foldmethod=marker
set noswapfile
" Search {{{
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
set gdefault

set scrolloff=3
set sidescroll=1
set sidescrolloff=10
" }}}
set nu
syntax on
:set mouse=v
" }}}
" Remap{{{
nnoremap <space> za
nnoremap D d%
nnoremap n nzzzv
nnoremap N Nzzzv
noremap H ^
noremap L g_

map <tab> %
" Disable arrow keys{{{
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
"}}}
" Auto close brackets{{{
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O"}}}
" }}}
" Remember line from closed file{{{
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif
"}}}
" NASM assembler{{{
let g:asmsyntax = 'nasm'
"}}}
