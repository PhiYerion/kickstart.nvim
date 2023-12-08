--Set completeopt to have a better completion experience
-- :help completeopt
-- menuone: popup even when there's only one match
-- noinsert: Do not insert text until a selection is made
-- noselect: Do not select, force to select one from the menu
-- shortness: avoid showing extra messages when using completion
-- updatetime: set updatetime for CursorHold
vim.opt.completeopt = { 'menuone', 'noselect', 'noinsert' }
vim.opt.shortmess = vim.opt.shortmess + { c = true }
vim.api.nvim_set_option('updatetime', 300)

-- Fixed column for diagnostics to appear
-- Show autodiagnostic popup on cursor hover_range
-- Goto previous / next diagnostic warning / error
-- Show inlay_hints more frequently
vim.cmd([[
  set signcolumn=yes
  autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
]])

vim.opt.list = true
vim.opt.listchars:append({ tab = '▶ ', space = '·', trail = '•', nbsp = '•', })
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.wo.relativenumber = true
vim.keymap.set('n', '<leader>st', ':Telescope<CR>', { desc = '[S]earch [T]elescope for help. Has keymaps' })
vim.keymap.set('n', '<leader>nf', ':Neotree float<CR>', { desc = '[N]eotree[O]pen' })
vim.keymap.set('n', '<leader>nc', ':Neotree close<CR>', { desc = '[N]eotree[C]lose' })
vim.keymap.set('t', "<Esc>", "<C-\\><C-n>:q<CR>")

vim.o.shell = "/bin/bash"
