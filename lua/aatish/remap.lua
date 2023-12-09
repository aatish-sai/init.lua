vim.g.mapleader = " "

local keymap = vim.keymap.set
local opts = { silent = true }

-- Window Navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Better Page up/down
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)

-- Move line in visual mode
keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")

keymap("n", "J", "mzJ`z")

keymap("n", "Q", "<nop>")

-- Better next/previous in search
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)

-- Ctrl C to escape
keymap("i", "<C-c>", "<Esc>", opts)

-- Better Paste
keymap("v", "p", [["_dP]], opts)

-- Stay in indent mode while editing
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Save
keymap("n", "<leader>w", vim.cmd.w, opts)

keymap("n", "<leader><leader>", vim.cmd.so, opts)

-- Bufferline Navigation
keymap("n", "<Tab>", ":BufferLineCycleNext<CR>", opts)
keymap("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", opts)
keymap("n", "<S-h>", ":BufferLineMovePrev<CR>", opts)
keymap("n", "<S-l>", ":BufferLineMoveNext<CR>", opts)

-- Toggle qflist
keymap("n", "<leader>q", "<cmd>lua require('utils').toogle_quicklist()<CR>", opts)
