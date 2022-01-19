" Plugins
call plug#begin('~/.local/share/nvim/plugged')
    Plug 'honza/vim-snippets'
    Plug 'preservim/nerdtree'
    Plug 'preservim/nerdcommenter'
    Plug 'vim-python/python-syntax'
    Plug 'morhetz/gruvbox'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'turbio/bracey.vim'
    Plug 'ap/vim-buftabline'
call plug#end()

" Settings
let g:python_highlight_all = 1
let g:fzf_action = { 'ctrl-v': 'vsplit' }
let g:NERDSpaceDelims = 1
let g:NERDTreeIgnore = ['^node_modules$', '__pycache__']
let mapleader = " "
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
nnoremap <C-x> :NERDTreeToggle<CR>
nnoremap <S-h> :bprev<CR>
nnoremap <S-l> :bnext<CR>
nnoremap <leader>d :bdelete<CR>
nnoremap <leader>f :FZF<CR>
nnoremap <S-u> <C-r>
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <F5> :Bracey<CR>
nnoremap <S-F5> :BraceyStop<CR>
nnoremap <leader>r :so ~/.config/nvim/init.vim<CR>

" Source the settings of coc
source $HOME/.config/nvim/plug-config/coc.vim
