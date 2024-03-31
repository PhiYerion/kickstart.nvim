return {
  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    on_attach = function()
      require("typescript-tools").setup({
        on_attach = on_attach,
        capabilities = capabilities,
      })
    end,
  },
  { 'sbdchd/neoformat' },
}
