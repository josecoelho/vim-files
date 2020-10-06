filetype plugin indent on " required

" NeoVim inline substitution feedback
if has('nvim')
  set inccommand=nosplit
endif

" Show commands
set showcmd

" Show highlight after 120 chars
let &colorcolumn=join(range(120,999),",")

" Auto remove trailing spaces from some file types
autocmd FileType c,cpp,java,php,ruby,javascript,ex,exs autocmd BufWritePre <buffer> %s/\s\+$//e

" opens in a new tab, or change the tab is already opened
set switchbuf+=usetab,newtab

set number
set encoding=utf-8
set ruler

" Shared clipboard
set clipboard=unnamed

" Highlight Syntax
syntax on

colorscheme atom-dark-256

let mapleader = ","

" Spell checking 
set spell spelllang=en_gb

" Enable mouse
set mouse=a

" Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set list listchars=tab:\ \ ,trail:·

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Status bar
set laststatus=2

"No backups
set nobackup
set noswapfile

" Default font
let g:default_font = 'Menlo'
set linespace=4

let g:default_font_size = 12
let g:font_separator = '\ '
