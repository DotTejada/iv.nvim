local M = {}

M.setup = function()
end

M.open = function()
    local current_file_path = vim.fn.expand('%:p')
    local exe = vim.fn.expand("~/programming/iv/iv")
    vim.system({exe, current_file_path}, {text = true}, on_exit)
end

return M
