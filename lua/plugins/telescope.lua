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
		{ "<C-p>", "<cmd>Telescope find_files<CR>" },
		{ "<leader>ft", "<cmd>Telescope git_files<CR>" },
		{ "<leader>fb", "<cmd>Telescope buffers<CR>" },
		{ "<leader>fg", "<cmd>Telescope live_grep<CR>" },
    {"<leader>/", "<cmd>Telescope current_buffer_fuzzy_find<CR>"},
	},
	opts = {
		pickers = {
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
