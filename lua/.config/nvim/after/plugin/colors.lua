vim.g.colorscheme = "gruvbox"

function ColorMyPencils()
    vim.g.gruvbox_contrast_dark = 'hard'
    vim.g.tokyonight_transparent_sidebar = true
    vim.g.tokyonight_transparent = true
    vim.g.tokyonight_italic_functions = true
    vim.g.gruvbox_invert_selection = '0'
    vim.opt.background = "dark"

    -- require("gruvbox").setup({
    --   bold = true,
    --   italic = true,
    --   inverse = true, -- invert background for search, diffs, statuslines and errors
    --   contrast = "hard", -- can be "hard", "soft" or empty string
    -- })

    vim.cmd("colorscheme " .. vim.g.colorscheme)

    local hl = function(thing, opts)
        vim.api.nvim_set_hl(0, thing, opts)
    end

    hl("SignColumn", {
        bg = "none",
    })

    hl("ColorColumn", {
        ctermbg = 0,
        bg = "#555555",
    })

    hl("CursorLineNR", {
        bg = "None"
    })

    hl("Normal", {
        bg = "none"
    })

    hl("LineNr", {
        fg = "#5eacd3"
    })

    hl("netrwDir", {
        fg = "#5eacd3"
    })

end
ColorMyPencils()
