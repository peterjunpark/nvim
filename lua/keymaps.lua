local map = vim.keymap.set
-- Yeet x to black hole register.
map({ 'n', 'v' }, 'x', '"_x')

-- Easier ^ and g_.
map({ 'n', 'v' }, 'gh', '^', { desc = 'First non-blank in line' })
map({ 'n', 'v' }, 'gl', 'g_', { desc = 'Last non-blank in line' })

-- Cycle through tabs.
map('n', '<Tab>', '<cmd>tabn<CR>')
map('n', '<BS>', '<cmd>tabp<CR>')

-- Clear search highlight on <Esc> in normal mode.
map('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
map('n', '[x', vim.diagnostic.goto_prev, { desc = 'Previous diagnostic' })
map('n', ']x', vim.diagnostic.goto_next, { desc = 'Next diagnostic' })
map('n', '<leader>xe', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
map('n', '<leader>xx', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

map('n', '<leader>ww', '<C-W>p', { desc = 'Other window', remap = true })
map('n', '<leader>wd', '<C-W>c', { desc = 'Delete window', remap = true })
map('n', '<leader>wx', '<C-W>s', { desc = 'Split window below', remap = true })
map('n', '<leader>wv', '<C-W>v', { desc = 'Split window right', remap = true })
map('n', '<leader>wh', '<C-w>h', { desc = 'Go to left window', remap = true })
map('n', '<leader>wj', '<C-w>j', { desc = 'Go to lower window', remap = true })
map('n', '<leader>wk', '<C-w>k', { desc = 'Go to upper window', remap = true })
map('n', '<leader>wl', '<C-w>l', { desc = 'Go to right window', remap = true })
