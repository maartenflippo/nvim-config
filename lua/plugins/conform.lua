return {
	"stevearc/conform.nvim",

	-- For some reason conform does not load if I don't add this. The README does
	-- not mention this, so I assume there is something else that might be wrong.
	-- However, this at least fixes the problem for now so we turn off lazy lua.
	lazy = false,

	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			rust = { "rustfmt", lsp_format = "fallback" },
			javascript = { "prettierd", "prettier", stop_after_first = true },
		},
		format_on_save = {
			-- Formatter is aborted after the timeout passed.
			timeout_ms = 500,
			lsp_format = "fallback",
		},
	},
	keys = {
		{
			"<leader>cf",
			function()
				require("conform").format()
			end,
			desc = "[C]ode [F]ormat",
		},
	},
}
