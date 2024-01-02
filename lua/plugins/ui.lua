return {
	{
		"rcarriga/nvim-notify",
		opts = {
			timeout = 3000,
		},
		init = function()
			vim.notify = require("notify")
		end,
	},
	{
		"akinsho/bufferline.nvim",
		event = "VeryLazy",
		keys = {},
		opts = {
			options = {
				indicator = {
					style = "underline",
				},
				show_buffer_close_icons = true,
				diagnostics = "nvim_lsp",
				offsets = {
					{
						filetype = "NvimTree",
						text = "File Explorer",
						text_align = "center",
						highlight = "Directory",
						separator = false,
					},
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
				theme = "auto",
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch", "diff" },
				lualine_c = {
					{ "filename", file_status = true, path = 1 },
				},
				lualine_x = {
					{ "diagnostics", sources = { "nvim_diagnostic" } },
					"encoding",
					"filetype",
				},
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
		},
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		opts = {
			indent = {
				char = "|",
				tab_char = { "|" },
			},
			scope = {
				enabled = true,
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
					"float",
				},
			},
		},
		main = "ibl",
	},
}
