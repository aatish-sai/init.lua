return {
    {
        "folke/todo-comments.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        opts = { signs = false },
    },
    {
        "akinsho/bufferline.nvim",
        event = "VeryLazy",
        keys = {
            { "<Tab>",   "<cmd>BufferLineCycleNext<CR>" },
            { "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>" },
            { "<S-h>",   "<cmd>BufferLineMovePrev<CR>" },
            { "<S-l>",   "<cmd>BufferLineMoveNext<CR>" },
        },
        opts = {
            options = {
                indicator = {
                    style = "underline",
                },
                show_buffer_icons = false,
                show_buffer_close_icons = true,
                separator_style = "thick",
                diagnostics = "nvim_lsp",
                offsets = {
                    {
                        filetype = "NvimTree",
                        text = "File Explorer",
                        text_align = "center",
                        highlight = "Directory",
                        separator = false,
                    },
                },
            },
        },
    },
    {
        "nvim-lualine/lualine.nvim",
        event = "VeryLazy",
        opts = {
            options = {
                icons_enabled = false,
                globalstatus = true,
                theme = "auto",
                section_separators = "",
                component_separators = "",
            },
            sections = {
                lualine_a = { "mode" },
                lualine_b = { { "branch", icons_enabled = false }, "diff" },
                lualine_c = {
                    { "filename", file_status = true, path = 1 },
                },
                lualine_x = {
                    { "diagnostics", sources = { "nvim_diagnostic" } },
                    "encoding",
                    "filetype",
                },
                lualine_y = {},
                lualine_z = { "location" },
            },
        },
    },
}
