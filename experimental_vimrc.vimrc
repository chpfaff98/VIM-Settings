" ------------------------------
" Basics
" ------------------------------
syntax on                " Syntax Highlighting
set nocompatible
set wrap
set encoding=utf-8
set number               " Zeilennummern
set relativenumber       " relative Nummern
set tabstop=2            " Tab = 2 Spaces
set shiftwidth=2         " Autoindent = 2 Spaces
set expandtab            " Tabs → Spaces
set autoindent           " übernimmt Einrückung der vorherigen Zeile
set smartindent          " erkennt einfache Codeblöcke
set nowrap               " kein Zeilenumbruch
set wildmenu
set cursorline           " aktuelle Zeile hervorheben
set showmatch            " Klammern hervorheben
set incsearch            " Live-Suche beim Tippen
set ignorecase           " Suche ohne Groß-/Kleinschreibung
set smartcase            " …außer du tippst Großbuchstaben
set hlsearch             " Funde markieren
set clipboard=unnamedplus " Copy/Paste mit System-Zwischenablage
set encoding=utf-8
set fileformat=unix
set ruler
set statusline=				"activate status bar and its configs
set statusline+=\ %F\ %M\ %Y\ %R\ %S\ %{&fileencoding}
set statusline+=%=
set statusline+=\%{mode()}\ row:\%l/%L\ col:\%c\ %p%%
set laststatus=2
set background=dark

" Enable the use of the 't_SI' and 't_EI' escape sequences
let &t_SI = "\e[5 q"  " Use a vertical bar cursor in insert mode
let &t_SR = "\e[4 q"  " Use a underline cursor in replace mode
let &t_EI = "\e[1 q"  " Use a block cursor in normal mode

" ------------------------------
" Filetype handling
" ------------------------------
filetype on
filetype plugin indent on

" ------------------------------
" Spracheinstellungen
" ------------------------------
au BufRead,BufNewFile *.html,*.css,*.js,*.json setlocal ts=2 sw=2 expandtab

" ------------------------------
" Keymaps (ohne externe Tools)
" ------------------------------
nnoremap <C-s> :w<CR>       " Speichern mit Ctrl+S
inoremap <C-s> <Esc>:w<CR>a
nnoremap <C-q> :q<CR>       " Quit mit Ctrl+Q
nnoremap <SPACE> :nohlsearch<CR> " Space löscht Such-Hervorhebung

" Terminal-Split Navigation ohne manuelles Normal-Mode wechseln
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>

" ------------------------------
" Split-Navigation
" ------------------------------
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Fenster verschieben im Normalmodus
nnoremap <C-W><C-K> <C-W>K
nnoremap <C-W><C-J> <C-W>J
nnoremap <C-W><C-H> <C-W>H
nnoremap <C-W><C-L> <C-W>L
nnoremap <C-W>= <C-W>=

" ------------------------------
" Auto-Klammern & Quotes (einfach)
" ------------------------------
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
inoremap " ""<Left>
inoremap ' ''<Left>

" ------------------------------
" Markiere TODO / FIXME
" ------------------------------
syntax match Todo /TODO\|FIXME/
highlight Todo ctermfg=Yellow gui=bold
