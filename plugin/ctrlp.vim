if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden --column
        \ --ignore ".git/*"
        \ --ignore "build/*"
        \ --ignore "node_modules/*"
        \ --ignore "bin/*"
        \ --ignore "*.class"
        \ --ignore "*.swp"
        \ --ignore "*.db"
        \ --ignore "*.so"
        \ -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
else
  let g:ctrlp_custom_ignore = {
        \ 'dir':  '\v[\/](\.git|\.hg|\.svn|build|bin)$',
        \ 'file': '\.class$\|\.so$\|\.db$\|\.swp$',
        \ }
  " When in a git repository, lists all files that are not ignored
  let g:ctrlp_user_command = {
        \ 'types': {
        \ 1: ['.git', 'cd %s && git ls-files && git ls-files --others --exclude-standard | sort | uniq'],
        \ },
        \ 'fallback': 'find %s -type f'
        \ }

  let g:ctrlp_extensions = ['line', 'modified']
endif
