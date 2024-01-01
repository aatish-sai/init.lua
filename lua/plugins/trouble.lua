return {
    "folke/trouble.nvim",
    cmd = { "TroubleToggle", "Trouble" },
    keys = {
        { "<leader>xx", "<cmd>TroubleToggle document_disgnostics<CR>", desc = "Document Diagnostics (Trouble)" },
        { "<leader>xX", "<cmd>TroubleToggle document_disgnostics<CR>", desc = "Workspace Diagnostics (Trouble)" },
        { "<leader>xL", "<cmd>TroubleToggle loclist<CR>",              desc = "Location List (Trouble)" },
        { "<leader>xQ", "<cmd>TroubleToggle quickfix<CR>",             desc = "Quickfix List (Trouble)" },
        {
            "[q",
            function()
                if require("trouble").is_open() then
                    require("trouble").previous({ skip_groups = true, jump = true })
                else
                    local ok, err = pcall(vim.cmd.cprev)
                    if not ok then
                        vim.notify(err, vim.log.levels.ERROR)
                    end
                end
            end
        },
        {
            "]q",
            function()
                if require("trouble").is_open() then
                    require("trouble").next({ skip_groups = true, jump = true })
                else
                    local ok, err = pcall(vim.cmd.cprev)
                    if not ok then
                        vim.notify(err, vim.log.levels.ERROR)
                    end
                end
            end
        }
    }
}
