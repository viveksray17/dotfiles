" Plugins
call plug#begin('~/.local/share/nvim/plugged')
    Plug 'scrooloose/nerdtree'
call plug#end()

" Color Scheme for lightline
let g:lightline = {
      \ 'colorscheme': 'one',
      \ }

" Default Settings
set title
set showmatch               " show matching 
set ignorecase              " case insensitive 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
filetype plugin indent on   " allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set clipboard+=unnamedplus
set mouse=a                 " enable mouse click
set nowrap                  " I don't want line wrap
set relativenumber          " relative line numbers for easy navigation
set nu
set laststatus=0 ruler

map <M-n> :NERDTreeToggle<CR>
map <M-w> :w<CR>
map <F8> :!gcc % && ./a.out<CR>
map <M-p> :!python %<CR>
map <M-t> :tabNext<CR>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <M-h> :bprev<CR>
map <M-l> :bnext<CR>
map <M-q> :bdelete<CR>
