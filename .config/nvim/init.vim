" Plugins
call plug#begin('~/.local/share/nvim/plugged')
    Plug 'itchyny/lightline.vim'
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
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
filetype plugin indent on   " allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set clipboard+=unnamedplus
set mouse=a                 " enable mouse click
set nowrap                  " I don't want line wrap

noremap <M-n> :NERDTreeToggle<CR>
noremap <F8> :!gcc % && ./a.out<CR>
noremap <F7> :!python %<CR>
noremap <M-t> :tabNext<CR>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
