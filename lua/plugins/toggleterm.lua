return {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
        local Terminal = require("toggleterm.terminal").Terminal
        local lazygit = Terminal:new({
            cmd = "lazygit",
            hidden = true,
            direction = "float"
        })
        local function lazygit_toggle()
            lazygit:toggle()
        end

        vim.keymap.set("n", "<leader>gg", lazygit_toggle, { noremap = true, silent = true })
    end
}
