set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()




Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'dracula/vim'
Plugin 'ervandew/supertab'

call vundle#end()

filetype plugin indent on


set laststatus=2
syntax enable
set noshowmode
try
    color dracula
catch
endtry


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
set mouse=a
set number
set pastetoggle=<F11>
set shiftwidth=4
set softtabstop=4
set expandtab
