set nocompatible
set wildmenu
set hidden
set number

set backspace=indent,eol,start
set t_Co=256

syntax on
filetype on
filetype plugin on
filetype indent on

" Indentation
set autoindent
set smartindent

" Search
set incsearch
set ignorecase
set smartcase
set hlsearch

" Backups
set nobackup
set nowritebackup
set noswapfile
set autoread

if has("gui_running")
	set guioptions-=T
	set guioptions-=m
endif
