set clipboard+=unnamedplus
let g:clipboard = {
  \ 'name': 'WSLClipboard',
  \ 'copy': {
  \   '+': 'clip.exe',
  \   '*': 'clip.exe',
  \   },
  \ 'paste': {
  \   '+': 'pbpaste.exe --lf',
  \   '*': 'pbpaste.exe --lf',
  \   },
  \ 'cache_enabled': 1
  \ }

" vim.o.clipboard = "unnamedplus"
" vim.g.clipboard = {
"   name = "wslclipboard",
"   copy = {
"     ["+"] = "clip.exe",
"     ["*"] = "clip.exe"
"   },
"   paste = {
"     ["+"] = "pbpaste.exe --lf",
"     ["*"] = "pbpaste.exe --lf"
"   },
"   cache_enable = 1,
" }
