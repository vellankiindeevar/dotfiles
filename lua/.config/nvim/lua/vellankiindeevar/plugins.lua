-- Plugins
local packer = require('packer')
local use = packer.use

packer.reset()
packer.init {
    git = {
        clone_timeout = -1
    }
}

-- Neovim package manager
use 'wbthomason/packer.nvim'

use 'windwp/nvim-autopairs'
-- Kommentary
use {'numToStr/Comment.nvim'}

-- Load Lua modules faster
use 'lewis6991/impatient.nvim'

-- use("sbdchd/neoformat")

use("TimUntersberger/neogit")

-- TJ created lodash of neovim
use("nvim-lua/plenary.nvim")
use("nvim-lua/popup.nvim")
use("nvim-telescope/telescope.nvim")
-- use 'nvim-telescope/telescope-fzy-native.nvim'
use 'nvim-telescope/telescope-file-browser.nvim'

-- lsp
use("neovim/nvim-lspconfig")
use 'williamboman/nvim-lsp-installer'

-- cmp and luasnip
use("hrsh7th/cmp-nvim-lsp")
use("hrsh7th/cmp-buffer")
use("hrsh7th/nvim-cmp")
-- use("tzachar/cmp-tabnine", { run = "./install.sh" })
-- use("onsails/lspkind-nvim")
-- use("nvim-lua/lsp_extensions.nvim")
-- use("glepnir/lspsaga.nvim")
-- use("simrat39/symbols-outline.nvim")
use("L3MON4D3/LuaSnip")
use "rafamadriz/friendly-snippets"
use("saadparwaiz1/cmp_luasnip")

-- Primeagen doesn"t create lodash
use("ThePrimeagen/git-worktree.nvim")
use("ThePrimeagen/harpoon")

use("mbbill/undotree")

-- Colorscheme section
use("gruvbox-community/gruvbox")
use("folke/tokyonight.nvim")
use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}

use("nvim-treesitter/nvim-treesitter", {
    run = ":TSUpdate"
})
use("nvim-treesitter/playground")
-- use("romgrk/nvim-treesitter-context")

-- use("mfussenegger/nvim-dap")
-- use("rcarriga/nvim-dap-ui")
-- use("theHamsta/nvim-dap-virtual-text")
use "milisims/nvim-luaref"
