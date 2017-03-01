" Enter toggles a line comment
nnoremap <CR> :call NERDComment('n', 'Toggle')<CR>
vnoremap <CR> :call NERDComment('v', 'Toggle')<CR>

" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"


