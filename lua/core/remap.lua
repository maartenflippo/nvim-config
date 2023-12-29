vim.g.mapleader = " ";

-- Open file navigation
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Pane navigation
vim.keymap.set("n", "<C-j>", "<C-W>j");
vim.keymap.set("n", "<C-k>", "<C-W>k");
vim.keymap.set("n", "<C-h>", "<C-W>h");
vim.keymap.set("n", "<C-l>", "<C-W>l");

-- Buffer navigation
vim.keymap.set("n", "<C-r>", vim.cmd.bnext)
vim.keymap.set("n", "<C-e>", vim.cmd.bprevious)
vim.keymap.set("n", "<C-q>", "<Cmd>bd<CR>")
