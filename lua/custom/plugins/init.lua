-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

vim.keymap.set('n', '<leader>e', ':Explore<CR>', { desc = 'Use builtin file directory explorer' })
vim.keymap.set('n', '<leader>gg', ':Git<CR>', { desc = 'Default git menu' })
vim.keymap.set('n', '<leader>ga', ':Git add<CR>', { desc = 'Add git file' })
vim.keymap.set('n', '<leader>gc', ':Git commit<CR>', { desc = 'Git commit' })
vim.keymap.set('n', '<leader>gd', ':Git diff<CR>', { desc = 'Git diff' })
vim.keymap.set('n', '<leader>gpl', ':Git pull<CR>', { desc = 'Git pull' })
vim.keymap.set('n', '<leader>gps', ':Git push<CR>', { desc = 'Git push' })
vim.keymap.set('n', '<leader>grl', ':Git whatchanged<CR>', { desc = 'Git reflog / what changed' })
vim.keymap.set('n', '<leader>b', '<C-S-6>', { desc = 'Go back in file buffer' })
vim.keymap.set('n', '<leader>u', ':UndotreeToggle<CR>', { desc = 'Undo tree' })
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Go to window below' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Go to window below left' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Go to window above' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Go to window right' })
vim.keymap.set('n', '<C-q>', ':q<CR>', { desc = 'Quit window' })
vim.keymap.set('n', '<leader>st', ':Telescope<CR>', { desc = '[S]earch [T]elescope for help. Has keymaps' })
vim.keymap.set('n', '<leader>nf', ':Neotree float toggle<CR>', { desc = '[N]eotree[O]pen' })
vim.keymap.set('t', "<Esc>", "<C-\\><C-n>:q<CR>")
vim.opt.textwidth = 80

return {}
