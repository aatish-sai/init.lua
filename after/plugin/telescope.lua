local status, telescope = pcall(require, "telescope")
if not status then
    return
end

telescope.setup({
    extensions = {
        ["ui-select"] = {
            require("telescope.themes").get_cursor({}),
        },
    },
    pickers = {
        live_grep = {
            vimgrep_arguments = {
                "rg",
                "--color=never",
                "--no-heading",
                "--line-number",
                "--column",
                "--smart-case",
                "--hidden",
                "--glob",
                "!**/.git/*"
            }
        }
    }
})

telescope.load_extension('fzf')
telescope.load_extension('ui-select')


local builtin = require('telescope.builtin')


vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>pb', builtin.buffers, {})
vim.keymap.set('n', '<leader>ps', builtin.live_grep, {})
vim.keymap.set('n', '<leader>pd', builtin.diagnostics, {})
