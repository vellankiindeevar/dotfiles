local M = {}

local function bind(op, outer_opts)
    outer_opts = outer_opts or {noremap = true}
    return function(lhs, rhs, opts)
        opts = vim.tbl_extend("force",
            outer_opts,
            opts or {}
        )
        vim.keymap.set(op, lhs, rhs, opts)
    end
end

M.nmap = bind("n", {noremap = false, silent = true})
M.nnoremap = bind("n",{silent = true})
M.vnoremap = bind("v",{silent = true})
M.xnoremap = bind("x",{silent = true})
M.inoremap = bind("i",{silent = true})
M.tnoremap = bind("t",{silent = true})

return M
