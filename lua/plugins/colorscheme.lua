return {
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {
            transparent = false,
        },
        init = function ()
            vim.cmd.colorscheme("tokyonight")
        end
    }
}
