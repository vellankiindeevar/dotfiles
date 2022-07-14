local Remap = require("vellankiindeevar.keymap")
local nnoremap = Remap.nnoremap

local M = {}

local function set_background(content)
  vim.fn.system({'powershell.exe','wallpaper.pyw', content})
end

local function select_background(prompt_bufnr, map)
	local function set_the_background(close)
		local content = require("telescope.actions.state").get_selected_entry(prompt_bufnr)
		set_background(content.value)
		if close then
			require("telescope.actions").close(prompt_bufnr)
		end
	end

	map("i", "<C-p>", function()
		set_the_background()
	end)

	map("i", "<CR>", function()
		set_the_background(true)
	end)
end

local function image_selector(prompt, cwd)
	return function()
		require("telescope.builtin").find_files({
			prompt_title = prompt,
			cwd = cwd,
      layout_config = {
        preview_width = 0,
      },

			attach_mappings = function(prompt_bufnr, map)
				select_background(prompt_bufnr, map)

				-- Please continue mapping (attaching additional key maps):
				-- Ctrl+n/p to move up and down the list.
				return true
			end,
		})
	end
end

M.anime_selector = image_selector("< weebs ( hehe ) > ", "/mnt/c/Users/Admin/Pictures/anime/")

nnoremap("<leader>w", M.anime_selector)
return M
