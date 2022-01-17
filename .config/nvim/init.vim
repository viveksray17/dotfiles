" Plugins
call plug#begin('~/.local/share/nvim/plugged')
    Plug 'honza/vim-snippets'
    Plug 'scrooloose/nerdtree'
    Plug 'vim-python/python-syntax'
    Plug 'morhetz/gruvbox'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" Settings
let g:python_highlight_all = 1
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
set nohlsearch
filetype plugin indent on   " allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set clipboard+=unnamedplus
set mouse=a                 " enable mouse click
set nowrap                  " I don't want line wrap
set relativenumber          " relative line numbers for easy navigation
set nu
set laststatus=0 ruler
" Colorscheme and background
colorscheme gruvbox
highlight Normal ctermbg=NONE

" Some Keyboard shortcuts
map <C-x> :NERDTreeToggle<CR>
let mapleader = " "
map <leader>h :bprev<CR>
map <leader>l :bnext<CR>
map <C-h> <C-w>h
map <C-l> <C-w>l
source $HOME/.config/nvim/plug-config/coc.vim
