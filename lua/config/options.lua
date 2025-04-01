vim.g.mapleader = " "
vim.g.localleader = "\\"

vim.g.have_nerd_font = false

-- Turn on linenumbers and make them relative.
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

-- The 'padding' at the bottom of the file.
vim.opt.scrolloff = 10

-- Turn tabs into spaces.
vim.opt.expandtab = true
-- One tab equals 4 spaces.
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

vim.opt.smarttab = true
vim.opt.smartindent = true
vim.opt.autoindent = true

vim.opt.breakindent = true

-- Don't show the mode, since it is shown in the status line.
vim.opt.showmode = false

-- Case-insensitive searching UNLESS capital letters are in the search term.
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.mouse = "a"

-- Always show the sign column. If false, the line column will change width
-- depending on whether there are e.g. LSP diagnostics.
vim.opt.signcolumn = "yes"

-- Open new splits on the right and below, as opposed to on the left and at the top.
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Display whitespace characters in the editor.
vim.opt.list = true

vim.opt.inccommand = "split"

-- Hide the cmd line if it is not in use.
vim.opt.cmdheight = 0
