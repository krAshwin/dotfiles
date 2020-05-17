" Vundle
filetype off

let g:vundle_default_git_proto = 'git'
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin('~/.vim/Plugins')

" Bundles
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'godlygeek/tabular'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'preservim/nerdcommenter'

call vundle#end()

filetype plugin on

syntax on 

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='powerlineish'

set history=50


" UI

set number
set showcmd
set showmatch
set autoindent
set ls=2


" Searching

set ignorecase
set smartcase
set gdefault
set hlsearch
set showmatch


" Line wrapping

set wrap
set linebreak
set showbreak=▹

" Vim Scrolling Speed Up
set ttyfast


" Indentation

set shiftwidth=4
set tabstop=4
set softtabstop=4
set shiftround
set expandtab

" Colorscheme
if &t_Co == 256
    try
        color xoria256
    catch /^Vim\%((\a\+)\)\=:E185/
        " Oh well
    endtry
endif
