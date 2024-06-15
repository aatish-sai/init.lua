return {
    {
        "hrsh7th/nvim-cmp",
        lazy = false,
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-nvim-lua",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            "hrsh7th/cmp-buffer",
            "L3MON4D3/LuaSnip",
            "saadparwaiz1/cmp_luasnip",
            "onsails/lspkind.nvim",
            {
                "tzachar/cmp-tabnine",
                build = {
                    "./install.sh",
                },
                opts = {
                    max_lines = 1000,
                    max_num_results = 3,
                    sort = true,
                },
                config = function(_, opts)
                    require("cmp_tabnine.config"):setup(opts)
                end,
            },
        },
        config = function()
            local ls = require("luasnip")
            require("luasnip.loaders.from_vscode").lazy_load()
            ls.config.setup({})

            local lspkind = require("lspkind")
            lspkind.init({})

            local cmp = require("cmp")

            local cmp_select = { behavior = cmp.SelectBehavior.Select }

            cmp.setup({
                snippet = {
                    expand = function(args)
                        ls.lsp_expand(args.body)
                    end,
                },
                completion = {
                    completeopt = "menu,menuone,noinsert,noselect",
                },
                formatting = {
                    format = lspkind.cmp_format({
                        mode = "symbol_text",
                        before = function(entry, vim_item)
                            if entry.source.name == "cmp_tabnine" then
                                vim_item.menu = ""
                            end
                            return vim_item
                        end,
                    }),
                },
                window = {
                    completion = cmp.config.window.bordered(),
                    documentation = cmp.config.window.bordered(),
                },
                mapping = cmp.mapping.preset.insert({
                    ["<C-p>"] = cmp.mapping.select_prev_item(),
                    ["<C-n>"] = cmp.mapping.select_next_item(),
                    ["<C-y>"] = cmp.mapping.confirm({ select = true }),
                    ["<C-l>"] = cmp.mapping(function()
                        if ls.expand_or_locally_jumpable() then
                            ls.expand_or_jump()
                        end
                    end, { "i", "s" }),
                    ["<C-h>"] = cmp.mapping(function()
                        if ls.locally_jumpable(-1) then
                            ls.jump(-1)
                        end
                    end, { "i", "s" }),
                    ["<C-Space>"] = cmp.mapping.complete(),
                }),
                sources = cmp.config.sources({
                    { name = "nvim_lsp" },
                    { name = "luasnip" },
                    { name = "cmp_tabnine" },
                    { name = "nvim_lua" },
                    { name = "buffer" },
                    { name = "path" },
                }),
            })
        end,
    },
}
