set   nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Plugin 'morhetz/gruvbox'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'dracula/vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'metakirby5/codi.vim'
Plugin 'mattn/emmet-vim'
Plugin 'jiangmiao/auto-pairs'
call vundle#end()


" easy motion settings 
let mapleader=","
let EasyMotion_smartcase = 1
"map <Leader> <plug>(easymotion-prefix)

"mapping for NERDTree
map <C-n> :NERDTreeToggle<CR>

filetype plugin indent on


try
    colorscheme dracula
"     colorscheme gruvbox

catch
endtry
if !has('gui_running')
  set t_Co=256
endif

"Settings fot grubox color scheme
"let g:gruvbox_contrast_dark='soft'
"set background=dark

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='dracula'
let g:airline_powerline_fonts = 1

let g:ycm_python_binary_path = '/usr/bin/python3'
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"set paste
"to clear selection 
nnoremap <leader><space> :nohlsearch<CR> 

let python_highlight_all = 1

syntax enable

inoremap jk <esc>

nnoremap <leader>u :GundoToggle<CR>

noremap <F5> <Esc>:w<CR>:!clear;python %<CR>



set foldenable
set foldlevelstart=10
set foldnestmax=10
nnoremap <space> za
set foldmethod=indent


set showmatch
set showcmd
set laststatus=2
set noshowmode
set clipboard=unnamedplus
set incsearch
set wildmenu
set hlsearch
set nomodeline
set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent
set nostartofline
set ruler
set confirm
set visualbell
set t_vb=
" set mouse=a
set number
set pastetoggle=<F11>
set shiftwidth=4
set softtabstop=4
set expandtab
"set clipboard+=unnamed
