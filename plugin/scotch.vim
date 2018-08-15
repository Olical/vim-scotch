autocmd FileType clojure nnoremap <buffer> <localleader>re :Eval<cr>
autocmd FileType clojure vnoremap <buffer> <localleader>re :Eval<cr>
autocmd FileType clojure nnoremap <buffer> <localleader>rf :%Eval<cr>
autocmd FileType clojure nnoremap <buffer> <localleader>rr :Require<cr>
autocmd FileType clojure nnoremap <buffer> <localleader>rR :Require!<cr>
autocmd FileType clojure nnoremap <buffer> <localleader>rt :Require! \| Eval (clojure.test/run-tests)<cr>
autocmd FileType clojure nnoremap <buffer> <localleader>rT :Require! \| Eval (clojure.test/run-all-tests)<cr>
autocmd FileType clojure nnoremap <buffer> <localleader>rl :Last<cr>
autocmd FileType clojure nnoremap <buffer> <localleader>rc :FireplaceConnect<cr>
autocmd FileType clojure nnoremap <buffer> gd :normal [<c-d><cr>

let g:scotch_stop = get(g:, 'scotch_stop', ":noop")
let g:scotch_start = get(g:, 'scotch_start', ":noop")
let g:scotch_refresh_dirs = get(g:, 'scotch_refresh_dirs', ["src"])

autocmd FileType clojure nnoremap <buffer> <silent> <localleader>rx :call scotch#RefreshChanged()<cr>
autocmd FileType clojure nnoremap <buffer> <silent> <localleader>rX :call scotch#RefreshAll()<cr>

autocmd FileType clojure nnoremap <buffer> <silent> <localleader>rs :Start! clojure -Sdeps '{:deps {cider/cider-nrepl {:mvn/version "0.18.0"}, org.clojure/tools.namespace {:mvn/version "0.2.11"}, nrepl/nrepl {:mvn/version "0.4.4"}, cider/piggieback {:mvn/version "0.3.8"}}}' -e '(require (quote cider-nrepl.main) (quote cider.piggieback) (quote cljs.repl.node)) (cider-nrepl.main/init ["cider.nrepl/cider-middleware" "cider.piggieback/wrap-cljs-repl"])'<cr>
autocmd FileType clojure nnoremap <buffer> <silent> <localleader>rp :Piggieback (cljs.repl.node/repl-env)<cr>
autocmd FileType clojure nnoremap <buffer> <silent> <localleader>rP :Piggieback!<cr>
