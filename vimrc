"  __  __        __     _____ __  __ ____   ____
" |  \/  |_   _  \ \   / /_ _|  \/  |  _ \ / ___|
" | |\/| | | | |  \ \ / / | || |\/| | |_) | |
" | |  | | |_| |   \ V /  | || |  | |  _ <| |___
" |_|  |_|\__, |    \_/  |___|_|  |_|_| \_\\____|
"         |___/


" ====================
" === Editor Setup ===
" ====================

" ===
" === System
" ===
set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set mouse=a
set encoding=utf-8

set clipboard+=unnamed


" ===
" === Main code display
" ===
set number
set relativenumber
set ruler
set cursorline
syntax enable
syntax on

" ===
" === Editor behavior
" ===
" Better tab
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=-1
set list
set listchars=tab:▸\ ,trail:▫
set scrolloff=5

" Prevent auto line split
set wrap
set tw=0

set indentexpr=
set backspace=indent,eol,start

set foldmethod=indent
set foldlevel=1
set foldlevelstart=99
nnoremap \ za


" ===
" === Status/command bar
" ===
set laststatus=2
set autochdir
set showcmd

" Show command autocomplete
set wildmenu
set wildmode=longest,list,full

" Searching options
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch


" ===
" === map
" ===

let mapleader=" "
map R :source $MYVIMRC<CR>
nnoremap <LEADER>rc :e ~/.vimrc<CR>
imap jj <Esc>
map s <nop>
map S :w<CR>
map Q :q<CR>
noremap J 5j
noremap K 5k
map sk :set nosplitbelow<CR>:split<CR>
map sj :set splitbelow<CR>:split<CR>
map sh :set nosplitright<CR>:vsplit<CR>
map sl :set splitright<CR>:vsplit<CR>
map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>
nnoremap <LEADER>h <C-w>h
nnoremap <LEADER>j <C-w>j
nnoremap <LEADER>k <C-w>k
nnoremap <LEADER>l <C-w>l
map ss <C-w>w
noremap wk <C-w>t<C-w>K
noremap wl <C-w>t<C-w>L
map tu :tabe<CR>
map th :-tabnext<CR>
map tl :+tabnext<CR>
map tt :tabnext<CR>
map tmn :-tabmove<CR>
map tmp :+tabmove<CR>


"inoremap ' ''<++><Esc>4hi
"inoremap " ""<++><Esc>4hi
"inoremap ( ()<++><Esc>4hi
"inoremap { {}<++><Esc>4hi
"inoremap [ []<++><Esc>4hi
"inoremap ;{ {<CR>}<Esc>O

map sm :r !figlet
nnoremap <LEADER><CR> :set hlsearch!<CR>


call plug#begin()
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'dhruvasagar/vim-table-mode'
    Plug 'preservim/nerdtree'
    Plug 'mbbill/undotree'
    Plug 'jiangmiao/auto-pairs'
call plug#end()

:source ~/markdown.vim



" COC
set hidden

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" nerdtree
nnoremap tree :NERDTreeToggle<CR>

" Undotree
nnoremap ud :UndotreeToggle<CR>
