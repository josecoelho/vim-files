filetype plugin indent on " required

" Show highlight after 120 chars
let &colorcolumn=join(range(120,999),",")

" Auto remove trailing spaces from some file types
autocmd FileType c,cpp,java,php,ruby,javascript autocmd BufWritePre <buffer> %s/\s\+$//e

" Quicfix list opens in a new tab, or change the tab is already opened
set switchbuf+=usetab,newtab


set number
set encoding=utf-8
set ruler
set cb=unnamed

syntax on
colorscheme atom-dark-256

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

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc

" Status bar
set laststatus=2

"No backups
set nobackup
set noswapfile

" Default font
let g:default_font = 'Menlo'
set linespace=4

if has("gui_macvim")
  let g:default_font_size = 14
  let g:font_separator = ':h'
else
  let g:default_font_size = 12
  let g:font_separator = '\ '
endif

if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
endif
