return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    keys = {
        { "<leader>e", "<Cmd>NvimTreeToggle<CR>", silent = true }
    },
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    opts = {
        disable_netrw = true,
        update_cwd = true,
        hijack_cursor = true,
        git = {
            ignore = false
        },
        renderer = {
            highlight_git = true,
            root_folder_modifier = ":t",
            icons = {
                show = {
                    git = false,
                    file = true,
                    folder = true,
                    folder_arrow = false
                },
            },
            indent_markers = {
                enable = true
            },
        },
        actions = {
            open_file = {
                quit_on_open = true,
                resize_window = true,
            },
        },
    },
    config = function(_, opts)
        require("nvim-tree").setup(opts)
    end,
}
