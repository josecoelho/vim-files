" General

" Fuzzy search of files
call dein#add('kien/ctrlp.vim')
" Fuzzy search of sessions
call dein#add('okcompute/vim-ctrlp-session')

" Git wrapper
call dein#add('tpope/vim-fugitive')
call dein#add('tpope/vim-rhubarb')

call dein#add('tpope/vim-unimpaired')
call dein#add('Raimondi/delimitMate')
call dein#add('tpope/vim-endwise')
call dein#add('tpope/vim-markdown')
call dein#add('suan/vim-instant-markdown')
call dein#add('elzr/vim-json')

" Dealing with comments
call dein#add('scrooloose/nerdcommenter')

" Searching
call dein#add('mileszs/ack.vim')
call dein#add('jremmen/vim-ripgrep')
call dein#add('christoomey/vim-tmux-navigator')
call dein#add('scrooloose/syntastic')
call dein#add('bling/vim-airline')

" Integrate with TMUX
call dein#add('christoomey/vim-tmux-navigator')

" Preview in the command line window
call dein#add('osyo-manga/vim-over')

"Sidebar
call dein#add('scrooloose/nerdtree')
call dein#add('Xuyuanp/nerdtree-git-plugin')

" Syntax
call dein#add('Matt-Deacalion/vim-systemd-syntax')
call dein#add('tomlion/vim-solidity')


" Sublime like autocomplete
call dein#add('Shougo/deoplete.nvim')

" Color schemes
call dein#add('twerth/ir_black')
call dein#add('gosukiwi/vim-atom-dark')

" Ruby/Rails stuff
call dein#add('vim-ruby/vim-ruby')
call dein#add('tpope/vim-rails')

" Git stuff
call dein#add('airblade/vim-gitgutter')

" Frontend/Javascript stuff
call dein#add('kchmck/vim-coffee-script')
call dein#add('mustache/vim-mustache-handlebars')

" Golang
call dein#add('fatih/vim-go')

" Elixir
call dein#add('elixir-lang/vim-elixir')
