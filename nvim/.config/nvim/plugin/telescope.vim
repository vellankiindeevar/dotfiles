lua require("vellankiindeevar")
nnoremap <Leader>f :lua require('telescope.builtin').find_files()<CR>
nnoremap <Leader>fb :lua require 'telescope'.extensions.file_browser.file_browser()<CR>

nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <leader>gf :lua require('telescope.builtin').git_files()<CR>

nnoremap <leader>pw :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>
nnoremap <leader>b :lua require('telescope.builtin').buffers()<CR>
nnoremap <leader>h :lua require('telescope.builtin').help_tags()<CR>

" nnoremap <leader>gw :lua require('telescope').extensions.git_worktree.git_worktrees()<CR>
" nnoremap <leader>gm :lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>

nnoremap <leader>T :TodoTelescope<CR>
