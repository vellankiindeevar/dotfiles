local Remap = require("vellankiindeevar.keymap")
local nnoremap = Remap.nnoremap

require("vellankiindeevar.telescope.wallpaper");
require("vellankiindeevar.telescope.buf-cht");

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
    -- extensions = {
    --    --  fzy_native = {
    --    --      override_generic_sorter = false,
    --    --      override_file_sorter = true,
    --    --  },
    --     file_browser={
    --         --[[ theme = "ivy", ]]
    -- }
    -- }
}


local M = {}

M.search_nvim = function()
    require"telescope.builtin".find_files({
        prompt_title = "< VimRC >",
        cwd = "$HOME/.config/nvim",
    })
  end

nnoremap("<leader>en", M.search_nvim)
return M
