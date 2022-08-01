require'lualine'.setup {
  options = {
    icons_enabled = true,
    theme = vim.g.colorscheme,
    component_separators = {'', ''},
    section_separators = {'', ''},
    disabled_filetypes = {},
    globalstatus = true,
  },
  sections = {
    lualine_a = {'mode'--[[ ,'hello' ]]},
    lualine_b = {{'branch',on_click=function() vim.cmd('!git status')end}},
    lualine_c = {{'filename'},{'diagnostics', sources = {'nvim_diagnostic'},on_click=function() vim.diagnostic.setqflist() end}},
    lualine_x = {'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  -- extensions={'hello'}
}
