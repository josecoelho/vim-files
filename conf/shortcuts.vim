" Disable search highlight when press ESC on command mode
nnoremap <Esc> :noh<CR>

" Enter toggles a line comment using CTRL+/ *using C-_, because that's how you should map / on vim o.O
nnoremap <C-_> :call NERDComment('n', 'Toggle')<CR>
vnoremap <C-_> :call NERDComment('v', 'Toggle')<CR>
inoremap <C-_> <Esc>:call NERDComment('n', 'Toggle')<CR>

" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" Ctrl + Space to switch between sessions
nnoremap <C-Space> :CtrlPSession<CR>

