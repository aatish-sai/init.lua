return {
	"folke/trouble.nvim",
	cmd = { "Trouble" },
	keys = {
		{ "<leader>xx", "<cmd>Trouble diagnostics toggle<CR>", desc = "Diagnostics (Trouble)" },
		{ "<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<CR>", desc = "Buffer Diagnostics (Trouble)" },
		{ "<leader>xl", "<cmd>Trouble loclist toggle<CR>", desc = "Location List (Trouble)" },
		{ "<leader>xq", "<cmd>Trouble qflist toggle<CR>", desc = "Quickfix List (Trouble)" },
		{
			"[q",
			function()
				if require("trouble").is_open() then
					require("trouble").previous({ skip_groups = true, jump = true })
				else
					local ok, err = pcall(vim.cmd.cprev)
					if not ok then
						vim.notify(err, vim.log.levels.ERROR)
					end
				end
			end,
		},
		{
			"]q",
			function()
				if require("trouble").is_open() then
					require("trouble").next({ skip_groups = true, jump = true })
				else
					local ok, err = pcall(vim.cmd.cprev)
					if not ok then
						vim.notify(err, vim.log.levels.ERROR)
					end
				end
			end,
		},
	},
    opts = {
        auto_close = true,
        icons = false
    }
}
