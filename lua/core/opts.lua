local opts = vim.o

opts.scrolloff = 5
opts.termguicolors = true
opts.number = true
opts.relativenumber = true
opts.expandtab = true
opts.tabstop = 4
opts.shiftwidth = 4

opts.foldmethod = "expr"
opts.foldexpr = "v:lua.vim.treesitter.foldexpr()"
opts.foldlevelstart = 99
