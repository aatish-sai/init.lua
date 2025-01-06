vim.opt.guicursor = ""

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.mouse = "a"

vim.opt.showmode = false

vim.opt.clipboard = "unnamedplus"

vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.signcolumn = "yes"

vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.list = false

vim.opt.inccommand = "split"

vim.opt.cursorline = true
vim.opt.cursorlineopt = "both"

vim.opt.scrolloff = 8

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.softtabstop = 4
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false

-- Clear highlighting on pressing Escape
vim.keymap.set("n", "<Esc>", "<esc>:nohlsearch<CR>", { silent = true })
vim.opt.termguicolors = true

-- Allow @ in filename
vim.opt.isfname:append("@-@")

vim.opt.colorcolumn = "80"

vim.opt.completeopt = { "menu", "menuone", "noselect" }
vim.opt.shortmess:append("c")

-- Remap for dealing with word wrap
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })


-- Add comment link for new line with remove with Ctrl - u
vim.opt.formatoptions:remove "o"

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
  group = vim.api.nvim_create_augroup("YankHighlight", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Hide Copilot on suggestions
vim.api.nvim_create_autocmd('User', {
  pattern = 'BlinkCmpCompletionMenuOpen',
  callback = function()
    vim.b.copilot_suggestion_hidden = true
  end
})
vim.api.nvim_create_autocmd('User', {
  pattern = 'BlinkCmpCompletionMenuClose',
  callback = function()
    vim.b.copilot_suggestion_hidden = false
  end
})

