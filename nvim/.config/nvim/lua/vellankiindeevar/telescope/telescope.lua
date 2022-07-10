local pickers = require("telescope.pickers")
local finders = require("telescope.finders")
local previewers = require("telescope.previewers")
local action_state = require("telescope.actions.state")
local conf = require("telescope.config").values
local actions = require("telescope.actions")

require('telescope').setup {
    defaults = {
        file_sorter = require('telescope.sorters').get_fzy_sorter,
        prompt_prefix = ' >',
        color_devicons = true,

        file_previewer   = require('telescope.previewers').vim_buffer_cat.new,
        grep_previewer   = require('telescope.previewers').vim_buffer_vimgrep.new,
        qflist_previewer = require('telescope.previewers').vim_buffer_qflist.new,

        mappings = {
            i = {
                ["<C-x>"] = false,
                ["<C-q>"] = actions.send_to_qflist,
            },
        }
    },
    extensions = {
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
        },
        file_browser={
    }
    }
}

require('telescope').load_extension('fzy_native')
require("telescope").load_extension "file_browser"
require("telescope").load_extension("git_worktree")

local M = {}

M.search_nvim = function()
    require"telescope.builtin".find_files({
        prompt_title = "< VimRC >",
        cwd = "$HOME/.config/nvim",
    })
  end

vim.keymap.set("n","<leader>en", M.search_nvim)

-- vim.keymap.set("n","<leader>gw", require('telescope').extensions.git_worktree.git_worktrees())
-- vim.keymap.set("n","<leader>gm", require('telescope').extensions.git_worktree.create_git_worktree())
return M

