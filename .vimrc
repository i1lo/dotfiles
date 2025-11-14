set nocompatible
set encoding=utf-8
set fileencoding=utf-8
set hidden
set nowrap
set lazyredraw
set mouse=a
set scrolloff=5
set history=1000
set undofile

set backup
set backupdir=~/.vim/backups//
set directory=~/.vim/swaps//
set undodir=~/.vim/undos//
set noswapfile
set nowritebackup
set nobackup

if !isdirectory(expand("~/.vim/backups"))
    call mkdir(expand("~/.vim/backups"), "p")
endif
if !isdirectory(expand("~/.vim/swaps"))
    call mkdir(expand("~/.vim/swaps"), "p")
endif
if !isdirectory(expand("~/.vim/undos"))
    call mkdir(expand("~/.vim/undos"), "p")
endif

set number
set relativenumber
set cursorline
set showcmd
set showmode
set ruler
set wildmenu
set signcolumn=yes
set showtabline=2
set list listchars=tab:>·,trail:·
set laststatus=2


syntax on
set termguicolors
set background=dark
colorscheme desert

hi CursorLine cterm=NONE ctermbg=236 ctermfg=NONE guibg=#2a2a2a
hi LineNr guifg=#5c6370
hi CursorLineNr guifg=#ffff00 gui=bold
hi StatusLine guibg=#282c34 guifg=#ffffff
hi StatusLineNC guibg=#21252b guifg=#5c6370
hi VertSplit guibg=NONE guifg=#3e4452
hi Search cterm=NONE ctermbg=yellow ctermfg=black guibg=#ffff00 guifg=#000000
hi IncSearch cterm=NONE ctermbg=yellow ctermfg=black guibg=#ff8700 guifg=#000000

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
let mapleader = " "


nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <leader><Tab> :bnext<CR>


nnoremap <leader>r :topleft 15split +terminal<CR>
tnoremap <Esc> <C-\><C-n>

nnoremap <leader>rr :q!<CR>
nnoremap <leader>w :update<CR>


set clipboard=unnamedplus

inoremap jk <Esc>
nnoremap <Space> :nohl<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>c :bd<CR>
nnoremap <leader>n :enew<CR>

nnoremap <leader>+ :resize +5<CR>
nnoremap <leader>- :resize -5<CR>
nnoremap <leader>> :vertical resize +5<CR>
nnoremap <leader>< :vertical resize -5<CR>

vnoremap <leader>c "+y
nnoremap <leader>cc "+yy
nnoremap <leader>p "+p
vnoremap <leader>p "+p
nnoremap <leader>pp p
vnoremap <leader>pp p

set statusline=
set statusline+=%f
set statusline+=\ [%Y]
set statusline+=\ [%M]
set statusline+=%=%l/%L:%c

