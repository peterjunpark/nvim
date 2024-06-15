-- Make Neovim look good.
return {
  'catppuccin/nvim',
  name = 'catppuccin',
  lazy = false,
  priority = 1000,
  opts = {},
  init = function()
    vim.cmd.colorscheme 'catppuccin'
  end,
}
