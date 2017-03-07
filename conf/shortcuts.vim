" Enter toggles a line comment
nnoremap <CR> :call NERDComment('n', 'Toggle')<CR>
vnoremap <CR> :call NERDComment('v', 'Toggle')<CR>

" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" Ctrl + Space to switch between sessions
nnoremap <C-Space> :CtrlPSession<CR>

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

