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


" local wsl = function()
"   local output = vim.fn.systemlist "uname -r"
"   return not not string.find(output[1] or "", "WSL")
" end

" vim.o.clipboard = "unnamedplus,unnamed"

" if wsl then
"   vim.g.clipboard = {
"     name = "wslclipboard",
"     copy = {
"       ["+"] = "clip.exe",
"       ["*"] = "clip.exe"
"     },
"     paste = {
"       ["+"] = "pbpaste.exe --lf",
"       ["*"] = "pbpaste.exe --lf"
"     },
"     cache_enable = 1,
"   }
" end

