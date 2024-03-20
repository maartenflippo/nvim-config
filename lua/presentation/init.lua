vim.cmd [[colorscheme tokyonight]]

require('lualine').setup {
    options = {
        theme = 'tokyonight'
    },

    sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { 'filename' },
        lualine_x = { 'encoding', 'fileformat', 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = { 'location', require('lsp-progress').progress }
    },
}
