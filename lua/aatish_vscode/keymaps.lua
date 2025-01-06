local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- remap leader key
keymap( "n", "<Space>", "<Nop>", opts )
keymap( "n", "Q", "<Nop>", opts )
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- yank to system clipboard
keymap( "v", "<leader>y", '"+y', opts )

-- paste from system clipboard
keymap("n", "<leader>p", '"+p', opts )

-- better indenting
keymap( "v", "<", "<gv", opts )
keymap( "v", ">", ">gv", opts )

-- move selected line / block of text in visual mode
keymap( "v", "K", ":move '<-2<CR>gv-gv", opts )
keymap( "v", "J", ":move '>+1<CR>gv-gv", opts )

keymap('n', "J", "mzJ`z", opts)

-- better pageup and down
keymap('n', '<C-d>', '<C-d>zz', opts)
keymap('n', '<C-u>', '<C-u>zz', opts)

-- better next and previous seach center the search result
keymap('n', 'n', 'nzzzv', opts)
keymap('n', 'N', 'Nzzzv', opts)

-- paste preserve primal yanked piece
keymap( "v", "p", '"_dP', opts )

-- remove highlighting after escaping
keymap( "n", "<Esc>", ":noh<CR>", opts )

-- ctrl + c as escape
keymap( "i", "<C-c>", "<Esc>", opts )


-- call vscode comands from neovim
-- general keymaps

keymap({ "n", "v" }, "<leader>w", "<cmd>lua require('vscode').action('workbench.action.files.saveAll')<CR>", opts)
keymap({ "n", "v" }, "<leader>ca", "<cmd>lua require('vscode').action('editor.action.quickFix')<CR>", opts)
keymap({"n", "v"}, "<leader>f", "<cmd>lua require('vscode').action('editor.action.formatDocument')<CR>", opts)