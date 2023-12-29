vim.g.mapleader = " ";

-- Open file navigation
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Pane navigation
vim.keymap.set("n", "<C-S-j>", "<C-W>j");
vim.keymap.set("n", "<C-S-k>", "<C-W>k");
vim.keymap.set("n", "<C-S-h>", "<C-W>h");
vim.keymap.set("n", "<C-S-l>", "<C-W>l");

-- Buffer navigation
vim.keymap.set("n", "<C-h>", vim.cmd.bnext)
vim.keymap.set("n", "<C-l>", vim.cmd.bprevious)
