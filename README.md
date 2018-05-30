# vim-scotch

A set of mappings taken from my [dotfiles][], as mentioned in my post [Editing Clojure with Neovim][post]. These are bindings that have improved my usage of [vim-fireplace][] a fair bit.

## Mappings

I'm assuming a `localleader` of `,` here, replace it with whatever you use.

| Scotch | Fireplace |
| --- | --- |
| `,re` | `:Eval` |
| `,re` | `:Eval` |
| `,rf` | `:%Eval` |
| `,rr` | `:Require` |
| `,rR` | `:Require!` |
| `,rt` | `:RunTests` |
| `,rl` | `:Last` |
| `,rc` | `:FireplaceConnect` |
| `,rx` | Refresh all changed namespaces (like CIDER) |
| `,rX` | Refresh *all* namespaces (also like CIDER) |
| `gd` | Go to the definition of the symbol under the cursor |

If you'd just like the function for refreshing namespaces without the mappings, you should probably just copy the code. Please feel free to copy and paste things!

## Configuration

I use a `.lvimrc` file in my projects that gets loaded by [vim-localvimrc][], here's everything you can set:

```viml
" What to execute to stop the system before refreshing namespaces.
" Default: noop
let g:scotch_stop = "(bounce.system/stop!)"

" What to call after refreshing the namespaces.
" Default: noop
let g:scotch_start = "(bounce.system/start!)"

" Directories to search for refreshable namespaces.
" Default: ["src"]
let g:scotch_refresh_dirs = ["src/clj", "src/cljc"]
```

## Installation

Use your favourite plugin manager, mine is [vim-plug][].

```viml
Plug 'Olical/vim-scotch'
```

## Why scotch?

Scotch goes down really well next to a fireplace and I _really_ :heart: Laphroaig ¯\\\_(ツ)\_/¯

## Unlicenced

Find the full [unlicense][] in the `UNLICENSE` file, but here's a snippet.

>This is free and unencumbered software released into the public domain.
>
>Anyone is free to copy, modify, publish, use, compile, sell, or distribute this software, either in source code form or as a compiled binary, for any purpose, commercial or non-commercial, and by any means.

Do what you want. Learn as much as you can. Unlicense more software.

[unlicense]: http://unlicense.org/
[dotfiles]: https://github.com/Olical/dotfiles
[post]: https://oli.me.uk/2018-05-04-editing-clojure-with-neovim/
[vim-fireplace]: https://github.com/tpope/vim-fireplace
[vim-plug]: https://github.com/junegunn/vim-plug
[vim-localvimrc]: https://github.com/embear/vim-localvimrc
