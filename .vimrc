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
"set paste
set showmatch
set nocompatible
set laststatus=2
set background=dark
set autoread
set showmode
set list
set clipboard=unnamed
set termguicolors

map <C-A> <ESC>:set mouse=a<CR>
map <C-D> <ESC>:set mouse-=a<CR>

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'thaerkh/vim-indentguides'
"Plug 'morhetz/gruvbox'
Plug 'sickill/vim-monokai'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'deoplete-plugins/deoplete-jedi'
call plug#end()

colo monokai
let g:deoplete#enable_at_startup = 1
filetype plugin indent on
syntax on
