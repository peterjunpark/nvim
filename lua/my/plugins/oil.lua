return {
  'stevearc/oil.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local oil = require 'oil'
    oil.setup {
      columns = {
        'icon',
      },
      view_options = {
        show_hidden = true,
        is_hidden_file = function(name)
          if name == '..' then
            return false
          else
            return vim.startswith(name, '.')
          end
        end,
      },
      use_default_keymaps = false,
      keymaps = {
        ['<C-/>'] = 'actions.show_help',
        ['<CR>'] = 'actions.select',
        ['<C-v>'] = 'actions.select_vsplit',
        ['<C-x>'] = 'actions.select_split',
        ['q'] = 'actions.close',
        ['='] = 'actions.open_cwd',
        ['-'] = 'actions.parent',
        ['`'] = 'actions.cd',
        ['~'] = 'actions.tcd',
        ['gp'] = 'actions.preview',
        ['gl'] = 'actions.refresh',
        ['g.'] = 'actions.toggle_hidden',
        ['gs'] = 'actions.change_sort',
        ['gx'] = 'actions.open_external',
        -- ["<C-t>"] = "actions.select_tab",
        -- ["g\\"] = "actions.toggle_trash",
      },
      float = {
        max_width = 100,
        max_height = 32,
      },
      skip_confirm_for_simple_edits = true,
      lsp_file_methods = {
        autosave_changes = 'unmodified',
      },
    }
    vim.keymap.set('n', '<leader>e', oil.toggle_float, { desc = 'Oil' })
    vim.keymap.set('n', '<leader>we', function()
      vim.cmd 'vsplit | wincmd l'
      oil.open()
    end, { desc = 'Oil' })
  end,
}
