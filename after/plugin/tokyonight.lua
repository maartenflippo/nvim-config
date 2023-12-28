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
            bg = colors.none
        }
    end,
})
