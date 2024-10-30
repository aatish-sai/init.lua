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
        notify_on_error = false,
        format_on_save = {
            timeout_ms = 500,
            lsp_fallback = true,
        },
        formatters_by_ft = {
            go = { "goimports", "gofmt" },
            javascript = { "prettier", stop_after_first = true },
            typescript = { "prettier", stop_after_first = true },
            javascriptreact = { "prettier" },
            typescriptreact = { "prettier" },
            css = { "prettier" },
            html = { "prettier" },
            json = { "prettier" },
            markdown = { "prettier" },
            lua = { "stylua" },
            python = { "isort", "black" },
            php = { "pint" },
            yaml = { "yamlfmt" }
        },
        formatters = {
            injected = { options = { ignore_errors = true } },
        },
    },
}
