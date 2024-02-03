vim.g.mapleader = " "

local keymap = vim.keymap.set
local opts = { silent = true }

-- Netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move line in visual mode
keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")

keymap("n", "J", "mzJ`z")

-- Better Page up/down
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)

-- Better next/previous in search
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)

-- Better Paste
keymap("v", "p", [["_dP]], opts)

-- Ctrl C to escape
keymap("i", "<C-c>", "<Esc>", opts)

keymap("n", "Q", "<nop>")

-- Stay in indent mode while editing
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Save
keymap("n", "<leader>w", vim.cmd.w, opts)

keymap("n", "<leader><leader>", vim.cmd.so, opts)

