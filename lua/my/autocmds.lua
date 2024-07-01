--  See `:help lua-guide-autocommands`.
local function augroup(name)
  return vim.api.nvim_create_augroup(name, { clear = true })
end

-- Highlight when yanking text.
-- See `:help vim.highlight.on_yank()`.
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking text',
  group = augroup 'highlight_yank',
  callback = function()
    vim.highlight.on_yank()
  end,
})
--
-- Fix conceallevel for json files
vim.api.nvim_create_autocmd('FileType', {
  group = augroup 'json_conceal',
  pattern = { 'json', 'jsonc', 'json5' },
  callback = function()
    vim.opt_local.conceallevel = 0
  end,
})


-- close some filetypes with <q>
-- vim.api.nvim_create_autocmd('FileType', {
--   group = augroup 'close_with_q',
--   pattern = {
--     'PlenaryTestPopup',
--     'help',
--     'lspinfo',
--     'notify',
--     'qf',
--     'tsplayground',
--     'neotest-output',
--     'checkhealth',
--     'neotest-summary',
--     'neotest-output-panel',
--   },
--   callback = function(event)
--     vim.bo[event.buf].buflisted = false
--     vim.keymap.set('n', 'q', '<cmd>close<cr>', { buffer = event.buf, silent = true })
--   end,
-- })

-- make it easier to close man-files when opened inline
vim.api.nvim_create_autocmd('FileType', {
  group = augroup 'man_unlisted',
  pattern = { 'man' },
  callback = function(event)
    vim.bo[event.buf].buflisted = false
  end,
})
