return {
	{
		"hrsh7th/nvim-cmp",
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
			vim.keymap.set({ "i", "s" }, "<C-L>", function()
				ls.jump(1)
			end, { silent = true })
			vim.keymap.set({ "i", "s" }, "<C-J>", function()
				ls.jump(-1)
			end, { silent = true })

			local lspkind = require("lspkind")
			local cmp = require("cmp")

			cmp.setup({
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
				snippet = {
					expand = function(args)
						require("luasnip").lsp_expand(args.body)
					end,
				},
				window = {
					completion = cmp.config.window.bordered(),
					documentation = cmp.config.window.bordered(),
				},
				mapping = cmp.mapping.preset.insert({
					["<C-p>"] = cmp.mapping.select_prev_item(),
					["<C-n>"] = cmp.mapping.select_next_item(),
					["<C-y>"] = cmp.mapping.confirm({ select = true }),
					["<C-Space>"] = cmp.mapping.complete(),
				}),
				sources = cmp.config.sources({
					{ name = "nvim_lsp" },
					{ name = "cmp_tabnine" },
					{ name = "luasnip" },
					{ name = "nvim_lua" },
					{ name = "buffer" },
					{ name = "path" },
				}),
			})
		end,
	},
}
