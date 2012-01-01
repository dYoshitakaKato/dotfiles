set runtimepath+=~/.vim/bundle/vundle
call vundle#rc()
Bundle 'actionscript.vim'
Bundle 'Color-Sampler-Pack'
Bundle 'CSApprox'
Bundle 'file-line'
Bundle 'altercation/vim-colors-solarized'
Bundle 'kchmck/vim-coffee-script'
Bundle 'mileszs/ack.vim'
Bundle 'pangloss/vim-javascript'
Bundle 'Raimondi/delimitMate'
Bundle 'sjl/gundo.vim'
" Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-cucumber'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-rake'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-vividchalk'
Bundle 'vim-ruby/vim-ruby'
Bundle 'wgibbs/vim-irblack'
Bundle 'wincent/Command-T'

filetype indent plugin on
colorscheme ir_black
syntax enable
let mapleader = ','

set title
set laststatus=2
set ruler
set visualbell t_vb=

set shiftwidth=2 tabstop=2
set expandtab
set autoindent

set showmatch

set hlsearch
set incsearch
set ignorecase
set smartcase

set hidden

set undofile
set undodir=/var/tmp

set wildmenu
set wildmode=list:longest,full
