" Map leader to which_key
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" set timeoutlen=100


" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Single mappings
let g:which_key_map['/'] = [ '<Plug>NERDCommenterToggle'  , 'comment' ]
let g:which_key_map['m'] = [ ':NERDTreeToggle'            , 'sidebar toggle' ]
let g:which_key_map['n'] = [ ':NERDTreeFind'              , 'reveal in sidebar' ]
let g:which_key_map['f'] = [ ':Files'                     , 'search files' ]
let g:which_key_map['h'] = [ '<C-W>s'                     , 'split below']
let g:which_key_map['T'] = [ ':Rg'                        , 'search text' ]
let g:which_key_map['v'] = [ '<C-W>v'                     , 'split right']

" s is for search
let g:which_key_map.s = {
      \ 'name' : '+search' ,
      \ '/' : [':History/'     , 'history'],
      \ ';' : [':Commands'     , 'commands'],
      \ 'b' : [':BLines'       , 'current buffer'],
      \ 'B' : [':Buffers'      , 'open buffers'],
      \ 'c' : [':Commits'      , 'commits'],
      \ 'C' : [':BCommits'     , 'buffer commits'],
      \ 'f' : [':Files'        , 'files'],
      \ 'g' : [':GFiles'       , 'git files'],
      \ 'G' : [':GFiles?'      , 'modified git files'],
      \ 'h' : [':History'      , 'file history'],
      \ 'H' : [':History:'     , 'command history'],
      \ 'l' : [':Lines'        , 'lines'] ,
      \ 'm' : [':Marks'        , 'marks'] ,
      \ 'M' : [':Maps'         , 'normal maps'] ,
      \ 'p' : [':Helptags'     , 'help tags'] ,
      \ 'P' : [':Tags'         , 'project tags'],
      \ 's' : [':Snippets'     , 'snippets'],
      \ 'S' : [':Colors'       , 'color schemes'],
      \ 't' : [':Rg'           , 'text Rg'],
      \ 'T' : [':BTags'        , 'buffer tags'],
      \ 'w' : [':Windows'      , 'search windows'],
      \ 'y' : [':Filetypes'    , 'file types'],
      \ 'z' : [':FZF'          , 'FZF'],
      \ }


let g:which_key_map.l = {
      \ 'name' : '+lsp',
      \ 'f': [':call CocAction("format")', 'format buffer'],
      \ 'F': ['<Plug>(coc-format-selected)', 'format selected'],
      \ 'qf': ['<Plug>(coc-fix-current)', 'auto fix current line'],
      \ 'gr': ['<Plug>(coc-references)', 'find references'],
      \ 'gd': ['<Plug>(coc-definition)', 'go to definition'],
      \ 'K': [':call <SID>show_documentation()<CR>', 'hover info'],
      \ 'rn': ['<Plug>(coc-rename)', 'rename'],
      \ 'j': [':CocNext','next default action'],
      \ 'k': [':CocPrev','previous default action'],
      \ 'a': [':CocList diagnostics','list diagnostics'],
      \ 'e': [':CocList extesions','list extensions'],
      \ 'c': [':CocList commands','list commands'],
      \ 'o': [':CocList outline','list buffer symbols'],
      \ 's': [':CocList -I symbols','workspace symbols'],
      \ 'p': [':CocListResume','resume latest list'],
      \ }

" g is for Git
let g:which_key_map.g = {
      \ 'name' : '+git' ,
      \ 's' : [':Gstatus'    , 'git status'],
      \ 'b' : [':Gblame'    , 'git blame'],
      \ ']c' : [']c'    , 'next change'],
      \ '[c' : ['[c', 'previous change'],
      \ }

let g:which_key_map['n'] = {
      \ 'name' : '+Navigation' ,
      \ 'G' : ['G'     , 'Move to end of file'],
      \ 'gg' : ['gg'   , 'Move to start of file'],
      \ 'gd' : ['gd'   , 'Go to local declaration'],
      \ 'gD' : ['gD'   , 'Go to global declaration'],
      \ 'g*' : ['g*'   , 'Search for word under cursor'],
      \ 'g#' : ['g#'   , 'Search backward for word under cursor'],
      \ '`.' : ['`.'     , 'Move to last edited line'],
      \ 'w' : ['w'     , 'Move to next word'],
      \ 'b' : ['b'     , 'Move to beginning of word / back'],
      \ 'e' : ['e'     , 'Move to end of word / forward'],
      \ '0' : ['0'     , 'Move to beginning of line'],
      \ '$' : ['w'     , 'Move to end of line'],
      \ '_' : ['_'     , 'Move to first character in line'],  
      \ '(' : ['('     , 'Jump to previous sentence'],  
      \ ')' : [')'     , 'Jump to next sentence'],  
      \ '{' : ['{'     , 'Jump to previous paragraph'],  
      \ '}' : ['}'     , 'Jump to next paragraph'],  
      \ '[[' : ['[['     , 'Jump to previous section'],
      \ ']]' : [']]'     , 'Jump to previous section'],
      \ '[]' : ['[]'     , 'Jump to end of previous section'],
      \ '][' : [']['     , 'Jump to end of next section']             
      \ }
let g:which_key_map['w'] = {
      \ 'name' : '+Windows' ,
      \ 'w' : ['<C-W>w'     , '<C-w>w - Next window'],
      \ 'd' : ['<C-W>c'     , '<C-w>c - Close window'],
      \ '-' : ['<C-W>s'     , '<C-w>s - Split window horizontally'],
      \ '|' : ['<C-W>v'     , '<C-w>v - Split window vertically'],
      \ 'h' : ['<C-W>h'     , '<C-w>h - Left window'] ,
      \ 'j' : ['<C-W>j'     , '<C-w>j - Window below'],
      \ 'l' : ['<C-W>l'     , '<C-w>l - Right window'],
      \ 'k' : ['<C-W>k'     , '<C-w>k - Window above'],
      \ 'H' : ['<C-W>5<'    , '<C-w>5< - Expand window left'],
      \ 'J' : ['resize +5'  , ':resize +5 - Expand window 5 lines larger'],
      \ 'L' : ['<C-W>5>'    , '<C-w>5> - Expand window 5 characters to right'],
      \ 'K' : ['resize -5'  , ':resize -5 - Expand window 5 lines smaller'],
      \ '=' : ['<C-W>='     , '<C-w>= - Equalize window sizes'],
      \ '?' : ['Windows'    , 'fzf-window'],
      \ }

" z is for spelling
let g:which_key_map.z = {
      \ 'name' : '+Spell' ,
      \ ']' : [']s', ']s next misspelled'],
      \ '[' : [']s', '[s previous misspelled'],
      \ '=' : ['z='     , 'Suggest'],
      \ 'g' : ['zg'     , 'Add word'],
      \ 'w' : ['zw'     , 'Bad spelling'],
      \}

" Register which key map
call which_key#register('<Space>', "g:which_key_map")
