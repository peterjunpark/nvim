-- Make Neovim look good.
return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    lazy = false,
    priority = 1000,
    opts = {
      color_overrides = {
        mocha = {
          text = '#F4CDE9',
          subtext1 = '#DEBAD4',
          subtext0 = '#C8A6BE',
          overlay2 = '#B293A8',
          overlay1 = '#9C7F92',
          overlay0 = '#866C7D',
          surface2 = '#705867',
          surface1 = '#5A4551',
          surface0 = '#44313B',

          base = '#352939',
          mantle = '#211924',
          crust = '#1a1016',
        },
      },
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
