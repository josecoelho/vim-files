"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif
" Required:
set runtimepath+=~/.vim/bundle/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.vim/bundle/dein')
  call dein#begin('~/.vim/bundle/dein')

  " Let dein manage dein
  " Required:
  call dein#add('~/.vim/bundle/dein/repos/github.com/Shougo/dein.vim')
call dein#add('christoomey/vim-tmux-navigator')

  " Add or remove your plugins here:
  source $HOME/.vim/conf/bundles.vim


  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

" Default templates setup
source $HOME/.vim/conf/templates.vim
