return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        opts = {
            ensure_installed = {
                "lua",
                "vim",
                "css",
                "python",
                "javascript",
                "html",
                "comment",
                "vimdoc",
                "tsx",
                "go",
                "gitignore",
                "php",
                "sql",
                "json",
            },
            highlight = { enable = true },
            indent = { enable = true },
            autotag = { enable = true }
        },
        config = function(_, opts)
            require("nvim-treesitter.configs").setup(opts)
        end,
    }
}
