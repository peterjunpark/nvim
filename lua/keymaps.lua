local map = vim.keymap.set
-- Yeet x to black hole register.
vim.keymap.set({ 'n', 'v' }, 'x', '"_x')

-- Easier ^ and g_.
vim.keymap.set({ 'n', 'v' }, 'gh', '^', { desc = 'First non-blank in line' })
vim.keymap.set({ 'n', 'v' }, 'gl', 'g_', { desc = 'Last non-blank in line' })

-- Cycle through tabs.
vim.keymap.set('n', '<Tab>', '<cmd>tabn<CR>')
vim.keymap.set('n', '<BS>', '<cmd>tabp<CR>')

-- Clear search highlight on <Esc> in normal mode.
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '[x', vim.diagnostic.goto_prev, { desc = 'Previous diagnostic' })
vim.keymap.set('n', ']x', vim.diagnostic.goto_next, { desc = 'Next diagnostic' })
vim.keymap.set('n', '<leader>xe', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>xx', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

map('n', '<leader>ww', '<C-W>p', { desc = 'Other Window', remap = true })
map('n', '<leader>wd', '<C-W>c', { desc = 'Delete Window', remap = true })
map('n', '<leader>wx', '<C-W>s', { desc = 'Split Window Below', remap = true })
map('n', '<leader>wv', '<C-W>v', { desc = 'Split Window Right', remap = true })
map('n', '<C-h>', '<C-w>h', { desc = 'Go to Left Window', remap = true })
map('n', '<C-j>', '<C-w>j', { desc = 'Go to Lower Window', remap = true })
map('n', '<C-k>', '<C-w>k', { desc = 'Go to Upper Window', remap = true })
map('n', '<C-l>', '<C-w>l', { desc = 'Go to Right Window', remap = true })
