local on_attach = require('custom.lsp_config').on_attach
local capabilities = require('custom.lsp_config').capabilities

return {
  {
    'pmizio/typescript-tools.nvim',
    dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
    on_attach = function()
      require('typescript-tools').setup {
        on_attach = on_attach,
        capabilities = capabilities,
      }
    end,
  },
  { 'sbdchd/neoformat' },
}
