return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		{ "nvim-lua/plenary.nvim" },
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
		},
		"nvim-telescope/telescope-file-browser.nvim",
		"nvim-telescope/telescope-ui-select.nvim",
	},
	keys = {
		{ "<C-p>", "<cmd>Telescope git_files<CR>" },
		{ "<leader>pf", "<cmd>Telescope find_files<CR>" },
		{ "<leader>pb", "<cmd>Telescope buffers<CR>" },
		{ "<leader>ps", "<cmd>Telescope live_grep<CR>" },
	},
	opts = {
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
					"!**/.git/*",
				},
			},
			find_files = {
				find_command = { "rg", "--files", "--hidden", "--no-ignore" },
			},
		},
		extensions = {
			["ui-select"] = {},
		},
	},
	config = function(_, opts)
		require("telescope").setup(opts)
		require("telescope").load_extension("ui-select")
		require("telescope").load_extension("fzf")
		require("telescope").load_extension("file_browser")
	end,
}
