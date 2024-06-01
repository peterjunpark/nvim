-- Make Neovim look good.
return {
  'rose-pine/neovim',
  name = 'rose-pine',
  lazy = false,
  priority = 1000,
  opts = {
    variant = 'auto',
    styles = {
      bold = false,
      italic = false,
    },
    highlight_groups = {
      -- mostly for Oil and Harpoon floats
      NormalFloat = { fg = 'text', bg = 'overlay' },
      FloatTitle = { fg = 'base', bg = 'pine' },
      FloatBorder = { fg = 'overlay', bg = 'overlay' },

      TelescopeTitle = { fg = 'base', bg = 'love' },
      TelescopeBorder = { fg = 'overlay', bg = 'overlay' },

      TelescopeSelection = { fg = 'text', bg = 'highlight_med' },
      TelescopeSelectionCaret = { fg = 'love', bg = 'highlight_med' },
      TelescopeMultiSelection = { fg = 'text', bg = 'highlight_high' },
      TelescopePromptTitle = { fg = 'base', bg = 'pine' },
      TelescopePreviewTitle = { fg = 'base', bg = 'iris' },
      TelescopePromptNormal = { fg = 'text', bg = 'surface' },
      TelescopePromptBorder = { fg = 'surface', bg = 'surface' },
    },
  },
  init = function()
    vim.cmd.colorscheme 'rose-pine'
  end,
}
