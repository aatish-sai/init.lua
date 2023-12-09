return {
    {
        "rcarriga/nvim-notify",
        opts = {
            timeout = 5000
        },
    },
    {
        "akinsho/bufferline.nvim",
        event = "VeryLazy",
        keys = {},
        opts = {
            options = {
                separator_style = "slant",
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
                theme = "catppuccin",
                globalstatus = true,
                sections = {
                    lualine_c = {}
                }
            }
        },
        init = function ()
            vim.opt.showmode = false
        end
    }
}
