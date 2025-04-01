local nmap = function(key, action, desc)
	vim.keymap.set("n", key, action, { desc = desc })
end

nmap("-", "<cmd>Oil --float<CR>", "Open parent directory in Oil.")

nmap("gl", vim.diagnostic.open_float, "Open Diagnostics in floating window")

nmap("<C-j>", "<C-W>j", "Move pane focus down")
nmap("<C-k>", "<C-W>k", "Move pane focus up")
nmap("<C-h>", "<C-W>h", "Move pane focus left")
nmap("<C-l>", "<C-W>l", "Move pane focus right")
