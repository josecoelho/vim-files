if has("autocmd")
  augroup templates
    au!
    " My special issue template
    autocmd BufNewFile issues/*.md 0r ~/.vim/templates/issue.md

    " read in template files
    autocmd BufNewFile *.* silent! execute '0r $HOME/.vim/templates/skeleton.'.expand("<afile>:e")   

    " auto execute commands inside of [:VIM_EVAL:] and [:END_EVAL:]
    autocmd BufNewFile * %substitute#\[:VIM_EVAL:\]\(.\{-\}\)\[:END_EVAL:\]#\=eval(submatch(1))#ge
  augroup END
endif
