lua require("vellankiindeevar")

nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>
nnoremap <Leader>f :lua require('telescope.builtin').find_files()<CR>

nnoremap <leader>pw :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>
nnoremap <leader>b :lua require('telescope.builtin').buffers()<CR>
nnoremap <leader>ht :lua require('telescope.builtin').help_tags()<CR>
nnoremap <leader>en :lua require('vellankiindeevar.telescope').search_nvim()<CR>
nnoremap <leader>ed :lua require('vellankiindeevar.telescope').search_dotfiles()<CR>
nnoremap <leader>gb :lua require('vellankiindeevar.telescope').git_branches()<CR>
nnoremap <leader>gw :lua require('telescope').extensions.git_worktree.git_worktrees()<CR>
nnoremap <leader>gm :lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>
