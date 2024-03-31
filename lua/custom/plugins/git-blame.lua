return {
  'f-person/git-blame.nvim',
  config = function()
    require('gitblame').setup()
    vim.g.gitblame_use_blame_commit_file_urls = true
    vim.keymap.set('n', "<leader>gbt", ":GitBlameToggle<CR>", { desc = 'Toggle git blame' })
    vim.keymap.set('n', "<leader>gbt", ":GitBlameOpenCommitURL<CR>", { desc = 'Open git blame comment' })
  end,
}
