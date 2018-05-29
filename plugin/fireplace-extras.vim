autocmd FileType clojure nnoremap <buffer> <localleader>re :Eval<cr>
autocmd FileType clojure vnoremap <buffer> <localleader>re :Eval<cr>
autocmd FileType clojure nnoremap <buffer> <localleader>rf :%Eval<cr>
autocmd FileType clojure nnoremap <buffer> <localleader>rr :Require<cr>
autocmd FileType clojure nnoremap <buffer> <localleader>rR :Require!<cr>
autocmd FileType clojure nnoremap <buffer> <localleader>rt :RunTests<cr>
autocmd FileType clojure nnoremap <buffer> <localleader>rl :Last<cr>
autocmd FileType clojure nnoremap <buffer> <localleader>rc :FireplaceConnect<cr>
autocmd FileType clojure nnoremap <buffer> gd :normal [<c-d><cr>

let g:fireplace_extras_stop = get(g:, 'fireplace_extras_stop', ":noop")
let g:fireplace_extras_start = get(g:, 'fireplace_extras_start', ":noop")
let g:fireplace_extras_refresh_dirs = get(g:, 'fireplace_extras_refresh_dirs', ["src"])

let s:eval_mapping = "autocmd FileType clojure nnoremap <buffer> <silent> <localleader>r"
let s:eval_prefix = ":Eval (do (require 'clojure.tools.namespace.repl)"
let s:eval_refresh_dirs = '(clojure.tools.namespace.repl/set-refresh-dirs "' . join(g:fireplace_extras_refresh_dirs, '" "') .  '")'
let s:eval_postfix = ")<cr>"

" TODO: These should be using the g: variables at execution time, not definition. Otherwise you can't update the variables in .lvimrc etc.
execute s:eval_mapping . "x ". s:eval_prefix . " " . g:fireplace_extras_stop . " " . s:eval_refresh_dirs " (clojure.tools.namespace.repl/refresh) " . g:fireplace_extras_start . s:eval_postfix
execute s:eval_mapping . "X " . s:eval_prefix . " " . g:fireplace_extras_stop . " (clojure.tools.namespace.repl/clear) " . s:eval_refresh_dirs . " (clojure.tools.namespace.repl/refresh-all) " . g:fireplace_extras_start . s:eval_postfix
