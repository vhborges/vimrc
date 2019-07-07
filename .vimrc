set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'morhetz/gruvbox'
Plugin 'Yggdroot/indentLine'
"Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'neoclide/coc.nvim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'rakr/vim-one'
Plugin 'sheerun/vim-polyglot'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Enable syntax highlighting
syntax on

" Better command-line completion
set wildmenu

" Use case insensitive search except when using capital letters
set ignorecase
set smartcase

" When opening a new line and no file-specific indenting is enabled,
" keep same indent as the line you're currently on
set autoindent

" Display line numbers on the left
set number

" Indentation options, change according to personal preference

" Number of visual spaces per TAB
set tabstop=2

" Number of spaces in TAB when editing
set softtabstop=2

" Number of spaces indented when reindent operations (>> and <<) are used
set shiftwidth=2

" Convert TABs to spaces
set expandtab

" Enable intelligent tabbing and spacing for indentation and alignment
set smarttab

" Gruvbox italics
let g:gruvbox_italic=1

" Coloscheme option
colorscheme gruvbox

" Setting dark mode
set background=dark

" Disable function highlight on C++ code
let g:cpp_no_function_highlight = 1

" Fix insert mode delay on vim-airline
set ttimeoutlen=10

" Better colors
set termguicolors

"Do not lose undo after changing buffer
:set hidden

" Use Enter to insert a new line
nmap <Enter> o<Esc>

" Automaticaly wrap git messages to 72 characteres length
au FileType gitcommit set tw=72
