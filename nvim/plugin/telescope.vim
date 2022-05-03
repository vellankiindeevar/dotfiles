lua require("vellankiindeevar")
nnoremap <leader>en :lua require('vellankiindeevar.telescope').search_nvim()<CR>
nnoremap <Leader>f :lua require('telescope.builtin').find_files()<CR>
nnoremap <Leader>fb :lua require 'telescope'.extensions.file_browser.file_browser()<CR>

nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <leader>gf :lua require('telescope.builtin').git_files()<CR>

nnoremap <leader>pw :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>
nnoremap <leader>b :lua require('telescope.builtin').buffers()<CR>
nnoremap <leader>h :lua require('telescope.builtin').help_tags()<CR>
" nnoremap <leader>va :lua require('vellankiindeevar.telescope').anime_selector()<CR>
