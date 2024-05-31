return {
  -- 'nvimdev/indentmini.nvim',
  -- opts = {}
  'lukas-reineke/indent-blankline.nvim',
  main = 'ibl',
  opts = {
    exclude = {
      filetypes = { 'help', 'lazy', 'mason', 'oil' },
    },
  },
}
