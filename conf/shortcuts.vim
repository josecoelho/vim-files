if exists('g:vscode')
  " Better Navigation
  nnoremap <silent> <C-j> :call VSCodeNotify('workbench.action.navigateDown')<CR>
  xnoremap <silent> <C-j> :call VSCodeNotify('workbench.action.navigateDown')<CR>
  nnoremap <silent> <C-k> :call VSCodeNotify('workbench.action.navigateUp')<CR>
  xnoremap <silent> <C-k> :call VSCodeNotify('workbench.action.navigateUp')<CR>
  nnoremap <silent> <C-h> :call VSCodeNotify('workbench.action.navigateLeft')<CR>
  xnoremap <silent> <C-h> :call VSCodeNotify('workbench.action.navigateLeft')<CR>
  nnoremap <silent> <C-l> :call VSCodeNotify('workbench.action.navigateRight')<CR>
  xnoremap <silent> <C-l> :call VSCodeNotify('workbench.action.navigateRight')<CR>

  nnoremap <silent> <C-p> :call VSCodeNotify('workbench.action.quickOpen')<CR>
  xnoremap <silent> <C-p> :call VSCodeNotify('workbench.action.quickOpen')<CR>

  " Show whichkey
  nnoremap <silent> <Space> :call VSCodeNotify('whichkey.show')<CR>
  xnoremap <silent> <Space> :call VSCodeNotify('whichkey.show')<CR>

  " Enter toggles a line comment using CTRL+/ *using C-_, because that's how you should map / on vim o.O
  nnoremap <C-_> :call NERDComment('n', 'Toggle')<CR>
  vnoremap <C-_> :call NERDComment('v', 'Toggle')<CR>
  inoremap <C-_> <Esc>:call NERDComment('n', 'Toggle')<CR>
else 
  " Quick return to normal mode
  inoremap jj <ESC>

  " deoplete tab-complete
  inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

  " Disable search highlight when press ESC on command mode
  nnoremap <Esc> :noh<CR>

  " Enter toggles a line comment using CTRL+/ *using C-_, because that's how you should map / on vim o.O
  nnoremap <C-_> :call NERDComment('n', 'Toggle')<CR>
  vnoremap <C-_> :call NERDComment('v', 'Toggle')<CR>
  inoremap <C-_> <Esc>:call NERDComment('n', 'Toggle')<CR>
endif

