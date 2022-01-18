" Plugins
call plug#begin('~/.local/share/nvim/plugged')
    Plug 'honza/vim-snippets'
    Plug 'scrooloose/nerdtree'
    Plug 'vim-python/python-syntax'
    Plug 'morhetz/gruvbox'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'turbio/bracey.vim'
call plug#end()

" Settings
let g:python_highlight_all = 1
set showmatch
set ignorecase
set hlsearch
set incsearch
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set autoindent
set nohlsearch
filetype plugin indent on
syntax on
set clipboard+=unnamedplus
set mouse=a
set nowrap
set relativenumber
set nu
set laststatus=0 ruler

" Colorscheme and background
colorscheme gruvbox
highlight Normal ctermbg=NONE

" Some Keyboard shortcuts
let mapleader = " "
nnoremap <C-x> :NERDTreeToggle<CR>
nnoremap <leader>h :bprev<CR>
nnoremap <leader>l :bnext<CR>
nnoremap <leader>d :bdelete<CR>
nnoremap <S-u> <C-r>
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Source the settings of coc
source $HOME/.config/nvim/plug-config/coc.vim
