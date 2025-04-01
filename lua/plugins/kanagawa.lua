return {
	"rebelot/kanagawa.nvim",
	opts = {
		-- Compiles the theme, which means it does not need to do that every time
		-- NeoVim starts. This makes startup faster, however, we need to run
		-- `:KanagawaCompile` every time this configuration changes.
		compile = true,

		overrides = function(colors)
			return {
				["@markup.link.url.markdown_inline"] = { link = "Special" }, -- (url)
				["@markup.link.label.markdown_inline"] = { link = "WarningMsg" }, -- [label]
				["@markup.italic.markdown_inline"] = { link = "Exception" }, -- *italic*
				["@markup.raw.markdown_inline"] = { link = "String" }, -- `code`
				["@markup.list.markdown"] = { link = "Function" }, -- + list
				["@markup.quote.markdown"] = { link = "Error" }, -- > blockcode
			}
		end,
	},

	init = function()
		vim.cmd("colorscheme kanagawa")
	end,

	build = function()
		vim.cmd("KanagawaCompile")
	end,
}
