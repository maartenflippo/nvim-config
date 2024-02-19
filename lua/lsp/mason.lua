require("mason").setup()

local lsp_config = require("mason-lspconfig")
local cmp_capabilities = require("lsp.cmp")

lsp_config.setup {
    ensure_installed = { "lua_ls", "rust_analyzer" },
}

lsp_config.setup_handlers {
    function(server_name)
        require("lspconfig")[server_name].setup {
            capabilities = cmp_capabilities,
        }
    end,

    ["rust_analyzer"] = function()
        require("lspconfig").rust_analyzer.setup {
            capabilities = cmp_capabilities,

            settings = {
                ["rust-analyzer"] = {
                    cargo = {
                        features = "all",
                        allFeatures = true,
                    },
                }
            },
        }
    end,
}
