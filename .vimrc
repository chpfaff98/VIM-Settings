" Basics
syntax on                " Syntax Highlighting
set nocompatible
set wrap
set encoding=utf-8
set list
set listchars=space:·,tab:→\ ,trail:·,eol:↲
set number               " row numbers
set relativenumber       " relative row numbers
set tabstop=2            " Tab = 2 Spaces
set shiftwidth=2         " Autoindent = 2 Spaces set expandtab
set smartindent          " detects code blocks and indents tem
set wrap                 " sets line wrap
set wildmenu             " activate wildmenu
set cursorline           " aktuelle Zeile hervorheben
set showmatch            " Klammern hervorheben
set incsearch            " Live-Suche beim Tippen
set ignorecase           " Suche ohne Groß-/Kleinschreibung
set smartcase            " activate smartcase
set hlsearch             " highlight search results
set clipboard=unnamedplus 
set encoding=utf-8
set fileformat=unix
set ruler
set statusline=				   "activate status bar and its configs
set statusline+=\ %F\ %M\ %Y\ %R\ %S\ %{&fileencoding}
set statusline+=%=
set statusline+=\%{mode()}\ row:\%l/%L\ col:\%c\ %p%%
set laststatus=2

" Enable the use of the 't_SI' and 't_EI' escape sequences
let &t_SI = "\e[5 q"  " Use a vertical bar cursor in insert mode
let &t_SR = "\e[4 q"  " Use a underline cursor in replace mode
let &t_EI = "\e[1 q"  " Use a block cursor in normal mode

" Filetype handling
filetype on
filetype plugin indent on

" Language settings
au BufRead,BufNewFile *.html,*.css,*.js,*.json setlocal ts=2 sw=2 expandtab

" Keymaps
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>a
nnoremap <C-q> :q<CR>
nnoremap <SPACE> :nohlsearch<CR> " deleting search highlight with space

" Split-Navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Split Window Navigation in Normalmode
nnoremap <C-W><C-K> <C-W>K
nnoremap <C-W><C-J> <C-W>J
nnoremap <C-W><C-H> <C-W>H
nnoremap <C-W><C-L> <C-W>L
nnoremap <C-W>= <C-W>=

" Autocompletion
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
inoremap " ""<Left>
inoremap ' ''<Left>

" Colorscheme
syntax on
colorscheme habamax
highlight LineNr ctermfg=gray
highlight CursorLineNr ctermfg=brown

" Navigation aus dem Terminal erzwingen
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l

" Automatischer Wechsel in den Insert-Mode beim Einsteigen
augroup TerminalStuff
  autocmd!
  autocmd TermOpen * setlocal nonumber norelativenumber
  autocmd BufEnter * if &buftype == 'terminal' | startinsert | endif
augroup END
