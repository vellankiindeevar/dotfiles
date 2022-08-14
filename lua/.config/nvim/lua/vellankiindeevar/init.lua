vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
--
-- Use impatient.nvim to load Lua modules faster
local cmd = vim.cmd

-- Configuration to load after loading plugins
local function load_post_plugin_config()
    require('vellankiindeevar.plugins')
    require('vellankiindeevar.settings')
    require"vellankiindeevar.globals"
    require('vellankiindeevar.keymap')
    require('vellankiindeevar.telescope')
    require('vellankiindeevar.lsp')
--    require'vellankiindeevar.langserve'
   -- require('config')
    require('vellankiindeevar.utils')
end

-- If Packer is not installed, download it and all plugins and reload config
-- If Packer is installed, load configuration as usual
local packer_install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if vim.fn.isdirectory(packer_install_path) == 0 then
    -- Download Packer and add it
    cmd('!git clone https://github.com/wbthomason/packer.nvim ' .. packer_install_path)
    cmd('packadd packer.nvim')

    -- Load plugins
    require('vellankiindeevar.plugins')

    -- Automatically sync packer and load the rest of the config
    cmd('PackerSync')
    require('vellankiindeevar.utils').create_augroup({
        {
            event = 'User',
            opts = { pattern = 'PackerComplete', once = true, callback = load_post_plugin_config }
        }
    }, 'load_post_plugin_config')
else
    require('vellankiindeevar.plugins')
    load_post_plugin_config()
end
