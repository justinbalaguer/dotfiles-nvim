vim.g.NERDTreeShowHidden = 1
vim.g.NERDTreeMinimalUI = 1
vim.g.NERDTreeIgnore = {}
vim.g.NERDTreeStatusline = ''

vim.api.nvim_set_keymap('n', '<C-b>', ':NERDTreeToggle<CR>', { silent = true })
