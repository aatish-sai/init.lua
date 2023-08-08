local nvim_tree = require("nvim-tree")

nvim_tree.setup({
    update_cwd = true,
    hijack_cursor = true,
    git = {
        ignore = false
    },
    actions = {
        open_file = {
            resize_window = true
        }
    },
    view = {
        width = 32
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
            }
        },
        indent_markers = {
            enable = true
        }
    }
})

vim.keymap.set("n", "<leader>e", "<Cmd>NvimTreeToggle<CR>", {silent = true})
vim.keymap.set("n", "<leader>E", "<Cmd>NvimTreeFindFile<CR>", {silent = true})
