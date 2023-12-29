require("mason").setup()

local lsp_config = require("mason-lspconfig")

lsp_config.setup {
    ensure_installed = { "lua_ls" },
}

lsp_config.setup_handlers {
    function(server_name)
        require("lspconfig")[server_name].setup {}
    end
}
