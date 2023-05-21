local fn = vim.fn

-- Automatically Install Packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system({
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    })
    print("Installing packer close and reopen Neovim")
    vim.cmd([[packadd packer.nvim]])
end


local status, packer = pcall(require, "packer")
if not status then
    return
end

return packer.startup(function(use)
    -- Packer
    use("wbthomason/packer.nvim")
    use("nvim-lua/plenary.nvim")

    -- Vim Fugitive
    use("tpope/vim-fugitive")
    use("lewis6991/gitsigns.nvim")
    use({ "rose-pine/neovim", as = "rose-pine" })

    -- Color Schemes
    use({ "catppuccin/nvim", as = "catppuccin" })
    use("folke/tokyonight.nvim")
    use("Mofiqul/dracula.nvim")

    -- Telescope
    use("nvim-telescope/telescope.nvim")

    use({ 'nvim-telescope/telescope-ui-select.nvim' })
    use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })

    use({ "folke/trouble.nvim" })

    -- Treesitter
    use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
    use("nvim-treesitter/nvim-treesitter-textobjects")
    use("nvim-treesitter/nvim-treesitter-context")
    use("JoosepAlviste/nvim-ts-context-commentstring")

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }

    use("windwp/nvim-autopairs")
    use("windwp/nvim-ts-autotag")

    use({ "kylechui/nvim-surround" })

    use({ "numToStr/Comment.nvim" })

    use("jose-elias-alvarez/null-ls.nvim")

    -- Lua Line
    use({ "akinsho/bufferline.nvim" })
    use({ "nvim-lualine/lualine.nvim" })

    -- Formatter
    use({ "mhartington/formatter.nvim" })

    -- Vim bclose
    use({"moll/vim-bbye"})

    -- Harpoon
    use({"ThePrimeagen/harpoon"})

    -- Which Key
    use({ "folke/which-key.nvim" })


    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
