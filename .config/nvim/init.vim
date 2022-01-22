" Plugins
call plug#begin('~/.local/share/nvim/plugged')
    Plug 'honza/vim-snippets'
    Plug 'preservim/nerdcommenter'
    Plug 'preservim/nerdtree'
    Plug 'vim-python/python-syntax'
    Plug 'morhetz/gruvbox'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'turbio/bracey.vim'
    Plug 'tpope/vim-fugitive'
call plug#end()

" Settings
let g:python_highlight_all = 1
let g:fzf_action = { 'ctrl-v': 'vsplit' }
let g:NERDSpaceDelims = 1
let NERDTreeMinimalUI=1
let g:NERDTreeIgnore = ['^node_modules$', '__pycache__', '__init__.py']
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
let mapleader = " "
set scrolloff=15
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
set nowrap
set relativenumber
set nu
set laststatus=0 ruler

" Colorscheme and background
colorscheme gruvbox
highlight Normal ctermbg=NONE

" Some Keyboard shortcuts
nnoremap <silent><S-h> :bprev<CR>
nnoremap <silent><S-l> :bnext<CR>
nnoremap <leader>d :bdelete<CR>
nnoremap <silent><C-p> :FZF<CR>
nnoremap <leader>f :echo &filetype<CR>
nnoremap <leader>gs :G<CR>
nnoremap <leader>gc :Git commit<CR>
nnoremap <leader>gd :Git diff<CR>
nnoremap <leader>ck :Git checkout %<CR>
nnoremap <leader>gp :Git push origin main<CR>
nnoremap <S-u> <C-r>
nnoremap <silent><C-x> :NERDTreeToggle<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <F5> :Bracey<CR>
nnoremap <S-F5> :BraceyStop<CR>
nnoremap <leader>r :so ~/.config/nvim/init.vim<CR>

" set filetype for html files to djangohtml if they occur in this directory
au BufNewFile,BufRead ~/Documents/code/django/**/*.html set filetype=htmldjango

" Source the settings of coc
source $HOME/.config/nvim/plug-config/coc.vim
