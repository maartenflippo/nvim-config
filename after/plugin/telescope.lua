local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fr", builtin.lsp_workspace_symbols, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
