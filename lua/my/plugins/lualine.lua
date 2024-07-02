return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local palette = require('catppuccin.palettes.init').get_palette()
    local custom_catppuccin = {
      normal = {
        a = { bg = palette.pink, fg = palette.base, gui = 'bold' },
        b = { bg = palette.surface0, fg = palette.rosewater, gui = 'bold' },
        c = { bg = palette.mantle, fg = palette.overlay1 },
      },
      insert = { a = { bg = palette.mauve, fg = palette.base, gui = 'bold' } },
      visual = { a = { bg = palette.lavender, fg = palette.base, gui = 'bold' } },
      replace = { a = { bg = palette.peach, fg = palette.base, gui = 'bold' } },

      inactive = { a = { bg = palette.mantle, fg = palette.overlay2, } },
    }
    local statusline_filename = {
      {
        'filename',
        separator = { left = '', right = '' },
        path = 1,
        padding = 0,
        shorting_target = 0,
        file_status = false,
      },
      {
        'filetype',
        separator = { left = '', right = '' },
        colored = false,
        icon_only = true,
        padding = { left = 1 },
      },
    }

    require('lualine').setup {
      options = {
        theme = custom_catppuccin,
        section_separators = '',
        component_separators = '',
      },
      sections = {
        lualine_a = statusline_filename,
        lualine_b = {
          { '%c||%l//%L', padding = { left = 1 }, separator = { left = '', right = '' } },
        },
        lualine_c = { 'encoding' },
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
      },
      inactive_sections = {
        -- lualine_a = statusline_filename,
        -- lualine_b = {},
        -- lualine_c = {},
        -- lualine_x = {},
        -- lualine_y = {},
        -- lualine_z = {},
      },
      winbar = {
        lualine_a = {},
        lualine_b = { { 'branch' }, { 'diff' }, { 'diagnostics' } },
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
      },
      extensions = {
        'lazy',
        'mason',
        'oil',
        'quickfix',
      },
    }
  end,
}
