local Remap = require'vellankiindeevar.keymap'
local nnoremap = Remap.nnoremap


nnoremap("<Leader>f",":lua require('telescope.builtin').find_files()<CR>")
--
-- nnoremap("<leader>ps",":lua require('telescope.builtin').grep_string{ search = vim.fn.input("Grep For > ")}<CR>")
nnoremap("<leader>gf",":lua require('telescope.builtin').git_files()<CR>")
--
-- nnoremap <leader>pw :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>
nnoremap("<leader>b",":lua require('telescope.builtin').buffers()<CR>")
nnoremap("<leader>h",":lua require('telescope.builtin').help_tags()<CR>")
-- nnoremap(
--   "<leader>fb",
--   ":Telescope file_browser<CR>"
-- )
