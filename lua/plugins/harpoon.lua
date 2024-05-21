return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  opts = {
    menu = {
      width = vim.api.nvim_win_get_width(0) - 8,
    },
    settings = {
      save_on_toggle = true,
    },
  },
  keys = function()
    local keys = {
      {
        '<leader>ha',
        function()
          require('harpoon'):list():add()
        end,
        desc = 'Add',
      },
      {
        '<leader>hl',
        function()
          local harpoon = require 'harpoon'
          harpoon.ui:toggle_quick_menu(harpoon:list())
        end,
        desc = 'List',
      },
    }

    for i = 1, 9 do
      table.insert(keys, {
        '<leader>h' .. i,
        function()
          require('harpoon'):list():select(i)
        end,
        desc = 'Harpoon to file ' .. i,
      })
    end
    return keys
  end,
}
