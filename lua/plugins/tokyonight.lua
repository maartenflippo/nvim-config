return {
    "folke/tokyonight.nvim",
    lazy = false,
    config = function()
        require("tokyonight").setup({
            style = "storm", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`

            --- You can override specific highlights to use other groups or a hex color
            --- function will be called with a Highlights and ColorScheme table
            ---@param highlights Highlights
            ---@param colors ColorScheme
            on_highlights = function(highlights, colors)
                highlights["StatusLineNormalMode"] = {
                    fg = colors.terminal_black,
                    bg = colors.blue
                }
                highlights["StatusLineInsertMode"] = {
                    fg = colors.terminal_black,
                    bg = colors.green
                }
                highlights["StatusLineVisualMode"] = {
                    fg = colors.terminal_black,
                    bg = colors.purple
                }
                highlights["StatusLineCmdLineMode"] = {
                    fg = colors.fg,
                }
                highlights["StatusLineLineInfo"] = {
                    fg = colors.comment,
                    bg = colors.bg_statusline
                }
                highlights["LspDiagnosticsSignError"] = {
                    fg = colors.red,
                }
                highlights["LspDiagnosticsSignWarning"] = {
                    fg = colors.yellow,
                }
                highlights["LspDiagnosticsSignHint"] = {
                    fg = colors.blue,
                }
                highlights["LspDiagnosticsSignInformation"] = {
                    fg = colors.purple,
                }
                highlights["LspDiagnosticsSign"] = {
                    bg = colors.bg_statusline
                }
            end,
        })
    end
}
