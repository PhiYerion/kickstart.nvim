return {
  'voldikss/vim-floaterm',
  on_attach = function()
    vim.keymap.set('n', "<leader>ft", ":FloatermNew --name=myfloat --height=0.8 --width=0.7 --autoclose=2 nu <CR> ",
      { desc = 'create new terminal' })
    vim.keymap.set('n', "t", ":FloatermToggle myfloat<CR>", { desc = 'Toggle terminal' })
  end
}
