return {
    {
        "rcarriga/nvim-notify",
        opts = {
            timeout = 3000
        },
        init = function()
            vim.notify = require("notify")
        end
    },
    {
        "akinsho/bufferline.nvim",
        event = "VeryLazy",
        keys = {},
        opts = {
            options = {
                indicator = {
                    style = 'underline'
                },
                show_buffer_close_icons = true,
                diagnostics = "nvim_lsp",
                offsets = {
                    {
                        filetype = "NvimTree",
                        text = "File Explorer",
                        text_align = "center",
                        highlight = "Directory",
                        separator = false
                    }
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
                theme = 'tokyonight',
                sections = {
                    lualine_c = {}
                }
            }
        },
        init = function()
            vim.opt.showmode = false
        end
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        opts = {
            indent = {
                char = "|",
                tab_char = "|",
            },
            scope = {
                enabled = true
            },
            exclude = {
                filetypes = {
                    "help",
                    "lazyterm",
                    "Trouble",
                    "lazy",
                    "mason",
                    "notify",
                    "toggleterm",
                    "NvimTree",
                    "dashoboard",
                    "float"
                }
            }
        },
        main = "ibl"
    }
}
