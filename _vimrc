set nocompatible
set number
set relativenumber
set cursorline
set showcmd
set showmode
set ruler
set encoding=utf-8
set fileencoding=utf-8
set history=1000
set undofile
set nowrap
set lazyredraw
set hidden

set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set smartindent
set autoindent

set ignorecase
set smartcase
set incsearch
set hlsearch

syntax on
set background=dark
colorscheme desert
set termguicolors
set showtabline=2
set signcolumn=yes
set wildmenu
set list listchars=tab:>·,trail:·

let mapleader = " "

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <leader>r :vsplit \| terminal<CR>
tnoremap <Esc> <C-\><C-n>

set clipboard=unnamedplus
set mouse=a
set scrolloff=5
inoremap jk <Esc>
nnoremap <Space> :nohl<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>c :bd<CR>
nnoremap <leader>n :enew<CR>

set laststatus=2
set statusline=
set statusline+=%f
set statusline+=\ [%Y]
set statusline+=\ [%M]
set statusline+=%=%l/%L:%c

nnoremap <leader>+ :resize +5<CR>
nnoremap <leader>- :resize -5<CR>
nnoremap <leader>> :vertical resize +5<CR>
nnoremap <leader>< :vertical resize -5<CR>
