"dein Scripts-----------------------------

if has('nvim')
 let g:python2_host_prog = '/usr/local/bin/python'
 let g:python3_host_prog = '/usr/local/bin/python3'
endif

" Auto reload changed files
set autoread

if &compatible
  set nocompatible               " Be iMproved
endif

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Add or remove your plugins here:
source $HOME/.vim/conf/bundles.vim

" Initialize plugin system
call plug#end()

" Default templates setup
source $HOME/.vim/conf/templates.vim
