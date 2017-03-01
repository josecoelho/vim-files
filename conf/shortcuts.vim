" Enter toggles a line comment
nnoremap <CR> :call NERDComment('n', 'Toggle')<CR>
vnoremap <CR> :call NERDComment('v', 'Toggle')<CR>

" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"


"Tabs navigation
nnoremap <C-]>   :tabnext<CR>
nnoremap <C-[>   :tabprevious<CR>
nnoremap <C-t>   :tabnew<CR>
