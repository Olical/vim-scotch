let s:eval_prefix = "Eval (do (require 'clojure.tools.namespace.repl) "
let s:eval_postfix = ")"

function scotch#BuildRefreshDirs()
    return '(clojure.tools.namespace.repl/set-refresh-dirs "' . join(g:scotch_refresh_dirs, '" "') .  '")'
endfunction

function scotch#RefreshChanged()
    execute s:eval_prefix . g:scotch_stop . scotch#BuildRefreshDirs() . " (clojure.tools.namespace.repl/refresh) " . g:scotch_start . s:eval_postfix
endfunction

function scotch#RefreshAll()
    execute s:eval_prefix . g:scotch_stop . " (clojure.tools.namespace.repl/clear) " . scotch#BuildRefreshDirs() . " (clojure.tools.namespace.repl/refresh-all) " . g:scotch_start . s:eval_postfix
endfunction

