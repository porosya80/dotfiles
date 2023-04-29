" Basic ------------------------------------- {{{
set wrap
set nocompatible
filetype on
filetype plugin on
filetype indent on
syntax on
set number
"set cursorline
"set cursorcolumn
set shiftwidth=4
set tabstop=4
set expandtab
set nobackup
set scrolloff=10
set nowrap
set incsearch
set ignorecase
set smartcase
set showcmd
set noshowmode
set showmatch
set hlsearch
set history=1000
"set nomodeline
set laststatus=2

set wildmenu
set wildmode=list:longest

set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" }}}

" Vimscript {{{

" This will enable code folding


"if the current file is HTML  set indentation to 2 spaces
autocmd Filetype html setlocal tabstop=2 shiftwidth=2 expandtab

" Enable undofile
if version >= 703
    set undodir=~/.vim/backup
    set undofile
    set undoreload=10000
endif



" }}}

" Plugins --------------------------- {{{

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
"Plugin 'vim-syntastic/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'dense-analysis/ale'
Plug 'vim-airline/vim-airline-themes'
Plug 'dracula/vim'
"Plug 'easymotion/vim-easymotion'
"Plugin 'metakirby5/codi.vim'
"Plugin 'mattn/emmet-vim'
"Plug 'jiangmiao/auto-pairs'
call plug#end()




" }}}


" Mapping {{{

let mapleader = '\'

nnoremap <leader>\ ''

inoremap jk <Esc>



nnoremap <space> :

nnoremap o o<Esc>

nnoremap O O<Esc>

nnoremap <F3> :NERDTreeToggle<cr>

let NERDTreeIgnore=['\.git$','\.jpg$','\.mp4$','\.ogg$','\.iso$','\.pdf$','\.pyc$','\.odt$','\.png$','\.gif$','\.db$']

" }}}

colorscheme dracula
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='dracula'
let g:airline_powerline_fonts = 1

