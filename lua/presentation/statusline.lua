local modes = {
    ["n"] = "NORMAL",
    ["no"] = "NORMAL",
    ["v"] = "VISUAL",
    ["V"] = "VISUAL LINE",
    ["␖"] = "VISUAL BLOCK",
    ["s"] = "SELECT",
    ["S"] = "SELECT LINE",
    ["␓"] = "SELECT BLOCK",
    ["i"] = "INSERT",
    ["ic"] = "INSERT",
    ["R"] = "REPLACE",
    ["Rv"] = "VISUAL REPLACE",
    ["c"] = "COMMAND",
    ["cv"] = "VIM EX",
    ["ce"] = "EX",
    ["r"] = "PROMPT",
    ["rm"] = "MOAR",
    ["r?"] = "CONFIRM",
    ["!"] = "SHELL",
    ["t"] = "TERMINAL",
}

local function mode()
    local current_mode = vim.api.nvim_get_mode().mode
    return string.format(" %s ", modes[current_mode]):upper()
end

local function update_mode_colors()
    local current_mode = vim.api.nvim_get_mode().mode

    if current_mode == "n" then
        return "%#StatuslineNormalMode#"
    elseif current_mode == "i" or current_mode == "ic" then
        return "%#StatuslineInsertMode#"
    elseif current_mode == "v" or current_mode == "V" or current_mode == "␖" then
        return "%#StatuslineVisualMode#"
    elseif current_mode == "R" then
        return "%#StatuslineReplaceMode#"
    elseif current_mode == "c" then
        return "%#StatuslineCmdLineMode#"
    elseif current_mode == "t" then
        return "%#StatuslineTerminalMode#"
    end

    return "%#StatuslineMode#"
end

local function git_branch()
	local branch = vim.fn.system("git branch --show-current 2> /dev/null | tr -d '\n'")

	if branch ~= "" then
        return string.format("%%#StatusLineGitBranch#  %s ", branch)
	else
		return ""
	end
end

local function filename()
    return " %<%F "
end

local function filetype()
    local file_name, file_ext = vim.fn.expand("%:t"), vim.fn.expand("%:e")
    local icon = require('nvim-web-devicons').get_icon(file_name, file_ext, { default = true })
    local filetype = vim.bo.filetype

    if filetype == '' then return '' end
    return "%#Filetype#" .. string.format(' %s %s ', icon, filetype):lower()
end

local function lineinfo()
    if vim.bo.filetype == "alpha" then
        return ""
    end

    return " %P %l:%c "
end

Statusline = {}

Statusline.active = function()
    return table.concat {
        "%#StatusLine#",
        update_mode_colors(),
        mode(),
        git_branch(),
        "%=",
        filename(),
        "%=",
        "%#StatusLineExtra#",
        filetype(),
        update_mode_colors(),
        lineinfo(),
    }
end

function Statusline.inactive()
    return " %F"
end

function Statusline.short()
    return "%#StatusLineNC#   NvimTree"
end

-- set statusline
-- TODO: replace this once we can define autocmd using lua
vim.api.nvim_exec([[
    augroup Statusline
        au!
        au WinEnter,BufEnter * setlocal statusline=%!v:lua.Statusline.active()
        au WinLeave,BufLeave * setlocal statusline=%!v:lua.Statusline.inactive()
        au WinEnter,BufEnter,FileType NvimTree setlocal statusline=%!v:lua.Statusline.short()
    augroup END
]], false)

