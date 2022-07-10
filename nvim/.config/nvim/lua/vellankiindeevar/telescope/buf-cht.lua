-- TODO: https://github.com/ThePrimeagen/.dotfiles/blob/master/bin/.local/bin/tmux-cht.sh
local M = {}
-- languages={}
-- core-util={}

-- M.create_win = function(filetype)
-- 	filetype = (filetype == nil and "result") or filetype
-- 	vim.api.nvim_command("botright vnew")
-- 	win = vim.api.nvim_get_current_win()
-- 	buf = vim.api.nvim_get_current_buf()

-- 	vim.api.nvim_buf_set_name(0, "result #" .. buf)

-- 	vim.api.nvim_buf_set_option(0, "buftype", "nofile")
-- 	vim.api.nvim_buf_set_option(0, "swapfile", false)
-- 	vim.api.nvim_buf_set_option(0, "filetype", filetype)
-- 	vim.api.nvim_buf_set_option(0, "bufhidden", "wipe")

-- 	vim.api.nvim_command("setlocal wrap")
-- 	vim.api.nvim_command("setlocal cursorline")

-- end

-- vim.keymap.set("n","<leader>W", M.create_win)
return M


