-- Make Neovim look good.
return {
  {
  'catppuccin/nvim',
  name = 'catppuccin',
  lazy = false,
  priority = 1000,
  opts = {
    integrations = {
      gitsigns = true,
      harpoon = true,
      indent_blankline = {
        enabled = true,
        colored_indent_levels = true,
      },
      mason = true,
      mini = {
        enabled = true,
      },
      telescope = {
        enabled = true,
        style = 'nvchad',
      },
      treesitter = true,
      which_key = true,
    },
  },
  init = function()
    vim.cmd.colorscheme 'catppuccin'
  end,
  },
}
