function InitColorProfile(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)
end

return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		lazy = false,
		priority = 1000,
		opts = {
			variant = "main",
			dark_variant = "main",
		},
		init = function()
			InitColorProfile("rose-pine")
		end,
	},
}
