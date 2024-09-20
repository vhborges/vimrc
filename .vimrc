set nocompatible              " be iMproved, required

call plug#begin()
" Plugins
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'arcticicestudio/nord-vim'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-surround'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-repeat'
Plug 'tommcdo/vim-exchange'
Plug 'tpope/vim-commentary'
Plug 'machakann/vim-highlightedyank'
call plug#end()

" Leader
let mapleader = ","

"let g:airline_powerline_fonts = 1

" NERDTree arrow symbols
let NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

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

" Number of visual spaces per TAB
set tabstop=4

" Number of spaces in TAB when editing
set softtabstop=4

" Number of spaces indented when reindent operations (>> and <<) are used
set shiftwidth=4

" Enable intelligent tabbing and spacing for indentation and alignment
set smarttab

" Setting dark mode
set background=dark

" Nord italics
let g:nord_italic = 1
let g:nord_italic_comments = 1

" Highlight the line number background
"let g:nord_cursor_line_number_background = 1
set cursorline

" Coloscheme option
colorscheme nord

" Fix insert mode delay on vim-airline
"set ttimeoutlen=10

" Better colors
set termguicolors

"Do not lose undo after changing buffer
set hidden

" Ctrl-j/k deletes blank line below/above, and Alt-j/k inserts.
nnoremap <silent><C-j> m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><C-k> m`:silent -g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><A-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><A-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

" Change L to H and H to L
"noremap L H
"noremap H L

" Automaticaly wrap git messages to 72 characteres length
au FileType gitcommit set tw=72

"Open NERDTree by default
"autocmd vimenter * NERDTree
"autocmd vimenter * wincmd p
"
"" Close vim when NERDTree is the only window
"autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Enable Smart tab line
"let g:airline#extensions#tabline#enabled = 1

" Delete current buffer with <leader>d
nnoremap <leader>d :bp<cr>:bd #<cr>

" Switch between buffers with <leader>n and <leader>p
nnoremap <leader>n :bn<cr>
nnoremap <leader>p :bp<cr>

" Prolog filetype
"let g:filetype_pl="prolog"

" Scroll screen when cursor is 5 lines before the border
set scrolloff=5

" Search text visually selected with //
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

" Keep text selected after indentation
vnoremap < <gv
vnoremap > >gv

" Get rid of the '-- INSERT --' displayed below
set noshowmode

let g:lightline = {
	\ 'colorscheme': 'nord',
	\ 'active': {
	\   'left': [ [ 'mode', 'paste' ],
	\             [ 'readonly', 'filename', 'modified' ] ],
	\   'right': [ [ 'lineinfo',  ],
	\              [ 'percent' ],
	\              [ 'fileformat', 'fileencoding', 'filetype'] ]
	\ },
  \ 'component_expand': {
	\   'buffers'     : 'lightline#bufferline#buffers'
  \ },
	\ 'tabline': {
	\   'left': [ ['buffers'] ],
	\   'right': [ ['close'] ]
	\	},
	\ 'component_type': {
	\   'buffers'     : 'tabsel'
	\ },
	\ }

" Open NERDTree with ctrl-n
map <C-n> :NERDTreeToggle<CR>

" Slant separators for lightline
let g:lightline.separator = { 'left': "\ue0b8", 'right': "\ue0be" }
let g:lightline.subseparator = { 'left': "\ue0b9", 'right': "\ue0b9" }
let g:lightline.tabline_separator = { 'left': "\ue0bc", 'right': "\ue0ba" }
let g:lightline.tabline_subseparator = { 'left': "\ue0bb", 'right': "\ue0bb" }

" Always shows the bufferline
set showtabline=2

" Shows the buffer's number in the bufferline
let g:lightline#bufferline#show_number = 1

" Mouse support in neovim
"set mouse=a

" Allows the bufferline to be clickable
let g:lightline#bufferline#clickable = 1
let g:lightline.component_raw = {'buffers': 1}

" Disable whitespace markers in red
"let g:python_highlight_space_errors = 0

" Paste in insert mode with Control-v and Copy in visual mode with Control-c
inoremap <C-v> <Esc>"+pa
vnoremap <C-c> "+y

