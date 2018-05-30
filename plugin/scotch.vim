autocmd FileType clojure nnoremap <buffer> <localleader>re :Eval<cr>
autocmd FileType clojure vnoremap <buffer> <localleader>re :Eval<cr>
autocmd FileType clojure nnoremap <buffer> <localleader>rf :%Eval<cr>
autocmd FileType clojure nnoremap <buffer> <localleader>rr :Require<cr>
autocmd FileType clojure nnoremap <buffer> <localleader>rR :Require!<cr>
autocmd FileType clojure nnoremap <buffer> <localleader>rt :RunTests<cr>
autocmd FileType clojure nnoremap <buffer> <localleader>rl :Last<cr>
autocmd FileType clojure nnoremap <buffer> <localleader>rc :FireplaceConnect<cr>
autocmd FileType clojure nnoremap <buffer> gd :normal [<c-d><cr>

let g:scotch_stop = get(g:, 'scotch_stop', ":noop")
let g:scotch_start = get(g:, 'scotch_start', ":noop")
let g:scotch_refresh_dirs = get(g:, 'scotch_refresh_dirs', ["src"])

autocmd FileType clojure nnoremap <buffer> <silent> <localleader>rx :call scotch#RefreshChanged()<cr>
autocmd FileType clojure nnoremap <buffer> <silent> <localleader>rX :call scotch#RefreshAll()<cr>
