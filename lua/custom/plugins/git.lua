return {
  {
    'nvim-tree/nvim-web-devicons'
  },
  {
    'pwntester/octo.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope.nvim',
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require 'octo'.setup()
      vim.keymap.set('n', '<leader>gg', '')
    end,
  },
  {
    'tpope/vim-fugitive'
  }
}
