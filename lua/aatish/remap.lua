vim.g.mapleader = " "

local keymap = vim.keymap.set

keymap("n", "<leader>pv", vim.cmd.Ex)

-- Better Page up/down
keymap("n", "<C-d>", "<C-d>zz")
keymap("n", "<C-u>", "<C-u>zz")

-- Save
keymap("n", "<leader>w", vim.cmd.w)

keymap("n", "<leader><leader>", vim.cmd.so)

keymap("n", "<leader>f", vim.lsp.buf.format)

