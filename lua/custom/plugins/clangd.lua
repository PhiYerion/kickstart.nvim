local lsp_config = require("custom.lsp_config")

return {
  require('lspconfig').clangd.setup {
    on_attach = lsp_config.on_attach,
    capabilities = lsp_config.capabilities,
    cmd = { "clangd", "--offset-encoding=utf-16" },
  }
}
