return {
	"github/copilot.vim",
	config = function()
		vim.cmd('imap <silent><script><expr> <C-CR> copilot#Accept("\\<CR>")')
		vim.g.copilot_no_tab_map = true
		vim.g.copilot_enabled = false
	end,
}
