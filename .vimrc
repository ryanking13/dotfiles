set t_Co=256
set shiftwidth=4
set tabstop=4
set expandtab
set hlsearch
set incsearch
set number
set autoindent
set cindent
set smartindent
set paste!
set showmatch
set nocompatible
set laststatus=2
set background=dark
set autoread
set showmode
"set list
set clipboard=unnamed

command PS vsp %:r.in|w|sp %:r.out|w|vertical resize 30|normal <C-w>w<C-w>w

map <C-A> <ESC>:set mouse=a<CR>
map <C-D> <ESC>:set mouse-=a<CR>
map <C-T> <ESC>:NERDTreeToggle<CR>

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'The-NERD-tree'
Plugin 'pangloss/vim-javascript'
Plugin 'othree/yajs.vim'
call vundle#end()

filetype plugin indent on
syntax on
