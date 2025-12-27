local M = {}

M.setup = function()
    vim.api.nvim_create_user_command("IVOpen", function()
        require("iv").open()
    end, {})
end

M.open = function()
    local current_file_path = vim.fn.expand('%:p')
    vim.system({"iv", current_file_path}, {text = true}, on_exit)
end

return M
