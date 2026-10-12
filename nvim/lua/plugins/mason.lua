require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "rust_analyzer" }, 
})

vim.g.rustaceanvim = {
  server = {
    capabilities = require('blink.cmp').get_lsp_capabilities(),
    
    default_settings = {
      ["rust-analyzer"] = {
        cargo = { allFeatures = true },
        checkOnSave = true, 
        check = {
          command = "clippy",
        },
      },
    },
  },
}
