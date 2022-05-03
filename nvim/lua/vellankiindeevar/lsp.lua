require'lspconfig'.pyright.setup{ --connect to the server 
  on_attach = function()
    vim.keymap.set("n","K",vim.lsp.buf.hover,{buffer=0})
  end,
}
