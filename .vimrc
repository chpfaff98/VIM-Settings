" This is the VIM Configuration file (my personal .vimrc file <3)

"test commit in raspi"

"Set statements
set nocompatible 			"Set compatibility to VIM only
set wrap 					"wraps text
set encoding=utf-8			"Encoding in UTF-8 
set number 					"Line numbers
set relativenumber			"Line numbers cursor-position related
set cursorline				"line in which the cursor is
set cursorcolumn			"column in which the cursor is
set shiftwidth=4			"shift width to 4 spaces
set tabstop=4				"tab width to 4 columns
set hlsearch				"highlighting when doing search
set wildmenu				"enable auto completion menu after pressing tab
set wildmode=list:longest	"make wildmenu like bash completion	
set statusline=				"activate status bar and its configs
set statusline+=\ %F\ %M\ %Y\ %R\ %S\ %{&fileencoding}
set statusline+=%=
set statusline+=\%{mode()}\ row:\%l/%L\ col:\%c\ %p%%
set laststatus=2
set list
set listchars=space:·,tab:>-,trail:~,extends:>,precedes:< "to see spaces between
set mouse=a					"Enable mouse support

" Shortcuts for saving docs
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>a
nnoremap <C-q> :q<CR>
inoremap <C-q> <Esc>:q<CR>

"colors
syntax on "highlight syntax
colorscheme habamax 			"Set the coloring for syntax highlight
highlight LineNr ctermfg=gray
highlight CursorLineNr ctermfg=brown

"filetypes
filetype on "Detect the file type
filetype indent on "Load an indent file for the detected file type.

" Define search
set hlsearch        "Highlight search
set incsearch       "incremental search
set ignorecase      "ignore cases
set smartcase
set wrapscan        "continue on the beginnnig

" Tastenkombinationen für die Navigation durch Suchergebnisse
nnoremap <silent> n nzzzv
nnoremap <silent> N Nzzzv

" Enable the use of the 't_SI' and 't_EI' escape sequences
let &t_SI = "\e[5 q"  " Use a vertical bar cursor in insert mode
let &t_SR = "\e[4 q"  " Use a underline cursor in replace mode
let &t_EI = "\e[1 q"  " Use a block cursor in normal mode

" Auto-close brackets, braces, and parantheses
inoremap ( ()<Left>
inoremap { {}<Left>
inoremap [ []<Left>
inoremap " ""<Left>
inoremap ' ''<Left>

" Set tab settings for Python files
autocmd FileType python setlocal expandtab
autocmd FileType python setlocal tabstop=4
autocmd FileType python setlocal shiftwidth=4
autocmd FileType python setlocal softtabstop=4

"Enable popup menu for completion
"set completeopt=menuone,noinsert,noselect
""set pumheight=10
""set omnifunc=syntaxcomplete#Complete
""set complete+=k
""set dictionary+=/usr/share/dict/words

""function! AutoComplete()
""  if col('.') > 1 && getline('.')[col('.') - 2] =~ '\k'
""    return "\<C-x>\<C-o>"
""  else
""    return ''
""  endif
""endfunction

""inoremap <expr> <S-k> pumvisible() ? "\<C-p>" : "\<S-k>"
""inoremap <expr> <S-j> pumvisible() ? "\<C-n>" : "\<S-j>"
""inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
""inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<C-h>"
""inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"
""inoremap <C-Space> <C-x><C-o>
""autocmd CursorMovedI * if pumvisible() == 0 | call feedkeys(AutoComplete(), 'n') | endif
