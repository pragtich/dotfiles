" A minimal vimrc for new vim users to start with.
"
" Referenced here: http://www.benorenstein.com/blog/your-first-vimrc-should-be-nearly-empty/

" Original Author:	 Bram Moolenaar <Bram@vim.org>
" Made more minimal by:  Ben Orenstein
" Last change:	         2012 Jan 20
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"
"  If you don't understand a setting in here, just type ':h setting'.

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
"
set nocompatible

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Switch syntax highlighting on
syntax on

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" Settings for indent
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2

filetype indent on	" Indent based on file type

" colors
syntax enable
set background=dark
colorscheme solarized

" UI stuff
set number	" Show line numbers
set showcmd	" Show command in bottom bar
set cursorline	" highlight current line

set wildmenu		" Allow visual autocmplete
set lazyredraw		" Dont waste time redrawing
set showmatch		" Matching braces

set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set ignorecase         " ignore case in searches
set smartcase          " but not when I type a capital
" turn off search highlight
"
nnoremap <leader><space> :nohlsearch<CR>

set number relativenumber " Hybrid line numbering


