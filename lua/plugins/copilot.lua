return {
	"github/copilot.vim",
	config = function()
		vim.keymap.set('i', "<C-j>", 'copilot#Accept("\\<CR>")', {
			replace_keycodes = false,
			expr = true
		})
		vim.g.copilot_no_tab_map = true
	end,
}
