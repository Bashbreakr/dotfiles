require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        },
        backdrop = 84,
    }
})

require("mason-lspconfig").setup({
    ensure_installed = { "rust_analyzer" },
})

require("mason-lspconfig").setup_handlers({
    function(server_name)
        require("lspconfig")[server_name].setup({})
    end,

    ["rust_analyzer"] = function()
        require("lspconfig").rust_analyzer.setup({
            settings = {
                ["rust_analyzer"] = {
                    cargo = { allFeatures = true },
                },
            },
        })
    end,
})
