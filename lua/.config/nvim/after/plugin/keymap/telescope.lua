local Remap = require("vellankiindeevar.keymap")
local nnoremap = Remap.nnoremap


nnoremap("<Leader>f", ":Telescope find_files<CR>")
-- vim.keymap.set({'n', 'v'}, '<leader>lr', vim.lsp.buf.references, { buffer=true })
--
-- nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
-- nnoremap <leader>gf :lua require('telescope.builtin').git_files()<CR>
--
-- nnoremap <leader>pw :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>
-- nnoremap <leader>b :lua require('telescope.builtin').buffers()<CR>
-- nnoremap <leader>h :lua require('telescope.builtin').help_tags()<CR>
