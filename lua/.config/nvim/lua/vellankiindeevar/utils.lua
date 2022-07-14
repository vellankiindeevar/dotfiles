local M = {}
local api = vim.api

-- Create an augroup
function M.create_augroup(autocmds, name, clear)
    local group = api.nvim_create_augroup(name, { clear = clear })

    for _, autocmd in ipairs(autocmds) do
        autocmd.opts.group = group
        api.nvim_create_autocmd(autocmd.event, autocmd.opts)
    end
end

-- Create a buffer-local augroup
function M.create_buf_augroup(bufnr, autocmds, name, clear)
    bufnr = bufnr or 0

    for _, autocmd in ipairs(autocmds) do
        autocmd.opts.buffer = bufnr
    end

    M.create_augroup(autocmds, name, clear)
end

return M
