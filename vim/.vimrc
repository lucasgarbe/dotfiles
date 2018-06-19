" .vimrc

set nocompatible
set encoding=utf-8 

" vundle plugin

filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'chriskempson/base16-vim' 
Plugin 'scrooloose/nerdtree'
Plugin 'itchyny/lightline.vim'
Plugin 'mattn/emmet-vim'
Plugin 'airblade/vim-gitgutter'

call vundle#end()
filetype plugin indent on

" visuals

syntax on
set t_Co=256 " important for base16 colors
let base16colorspace=256 " important for base16 colors 
colorscheme base16-tomorrow 
set background=dark
set expandtab " tab to spaces
set shiftwidth=2 " number of spaces when shift indenting
set tabstop=2 " number of visual spaces per tab
set softtabstop=2 " number of spaces in tab when editing
set wrap " wrap lines
set smartindent
set autoindent " copy indentation form previous line
set wrap linebreak nolist " wrap lines without line breaks
set linespace=4
set number " show line numbers
set showmatch " matches brackets
set cursorline " highlights current line
set visualbell " turn off the bell

set noshowmode " no mode shown, redundant with lightline
set laststatus=2 " important for lightline

" map NERDTree
map <C-n> :NERDTreeToggle<CR> 

" KEY MAPPINGS

" easier split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>