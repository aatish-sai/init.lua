return {
    "stevearc/conform.nvim",
    cmd = { "ConformInfo" },
    keys = {
        {
            "<leader>f",
            function()
                require("conform").format({ async = true, lsp_fallback = true })
            end,
            mode = "",
            desc = "Format buffer",
        },
    },
    opts = {
        format_by_ft = {
            javascript = { { "prettierd", "prettier" } },
            typescript = { { "prettierd", "prettier" } },
            javascriptreact = { "prettierd" },
            typescriptreact = { "prettierd" },
            css = { "prettierd" },
            html = { "prettierd" },
            json = { "prettierd" },
            markdown = { "prettierd" },
            lua = { "stylua" },
            python = { "isort", "black" },
            php = { "pint" },
            yaml = { "yamlfmt" }
        },
        format_on_save = {
            timeout_ms = 500,
            lsp_fallback = true
        },
        formatters = {
            injected = { options = { ignore_errors = true } },

            pint = {
                meta = {
                },
                command = function()
                    require("conform").utils.find_executable({
                        vim.fn.stdpth("data") .. "/mason/bin/pint",
                        "vendor/bin/pint",
                    }, "pint")
                end,
                args = { "$FILENAME" },
                stdin = false,
            }
        }
    },
}
