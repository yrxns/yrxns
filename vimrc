set nocompatible
set laststatus=2
set statusline=%F%r\ [%l,%v,%P]\ %{strftime(\"%H:%M\")}
set showcmd
set wildmenu
set relativenumber
set number
set showmatch
set hlsearch
set incsearch
set ignorecase
set smartcase
set encoding=utf-8
syntax on
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set softtabstop=-1
" set expandtab
colorscheme slate
set cursorline
set wrap
set scrolloff=5
set indentexpr=
set backspace=indent,eol,start
set autochdir



imap jj <Esc>
map s <nop>
map S :w<CR>
map Q :q<CR>
map R :source $MYVIMRC<CR>
noremap J 5j
noremap K 5k
map sl :set splitright<CR>:vsplit<CR>
map sh :set nosplitright<CR>:vsplit<CR>
map sk :set nosplitbelow<CR>:split<CR>
map sj :set splitbelow<CR>:split<CR>
let mapleader=" "
map <LEADER>h <C-w>h
map <LEADER>j <C-w>j
map <LEADER>k <C-w>k
map <LEADER>l <C-w>l
map <LEADER><LEADER> <C-w>w
map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>
map tu :tabe<CR>
map th :-tabnext<CR>
map tl :+tabnext<CR>
map tt :tabnext<CR>
set foldmethod=indent
set foldlevel=1
:nnoremap <space> za

call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()


map mark :CocCommand markdown-preview-enhanced.openPreview<CR>
