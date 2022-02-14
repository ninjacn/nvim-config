"
" Author: YaoMing
" Email: x@ninjacn.com

let s:conf_files = [
            \ "globals.vim",
            \ "plugins.vim",
            \ "themes.vim"
            \ ]

for s:fname in s:conf_files
    execute printf('source %s/%s', stdpath('config'), s:fname)
endfor
