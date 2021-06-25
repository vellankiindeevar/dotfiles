require("vellankiindeevar.telescope")
require("vellankiindeevar.treesitter")
require("vellankiindeevar.lsp")
require("vellankiindeevar.harpoon")
require("vellankiindeevar.statusline")

if pcall(require, 'plenary') then
  RELOAD = require('plenary.reload').reload_module

  R = function(name)
    RELOAD(name)
    return require(name)
  end
end

