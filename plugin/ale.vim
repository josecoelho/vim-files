let g:ale_completion_enabled=1

let g:ale_fixers = {
 \ 'javascript': ['prettier', 'eslint'],
 \ 'ruby': ['rubocop'],
\  'eruby': ['ruumba']
 \ }

let g:ale_linters = {
\  'ruby': ['rubocop', 'breakman'],
\  'eruby': ['erb']
\ }

let g:ale_fix_on_save = 0
