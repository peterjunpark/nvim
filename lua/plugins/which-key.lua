-- Show pending keybinds.
return {
  'folke/which-key.nvim',
  event = 'VimEnter',
  config = function() -- This is the function that runs, AFTER loading
    local wk = require 'which-key'

    wk.setup()
    wk.register {
      ['<leader>h'] = { name = 'Harpoon', _ = 'which_key_ignore' },
      ['<leader>l'] = { name = 'LSP', _ = 'which_key_ignore' },
      ['<leader>f'] = { name = 'Find', _ = 'which_key_ignore' },
      ['<leader>d'] = { name = 'Document', _ = 'which_key_ignore' },
      ['<leader>t'] = { name = '[T]oggle', _ = 'which_key_ignore' },
      ['<leader>p'] = { name = 'Project', _ = 'which_key_ignore' },
      ['<leader>w'] = { name = 'Window', _ = 'which_key_ignore' },
      ['<leader>x'] = { name = 'Diagnostics', _ = 'which_key_ignore' },
      -- ['<leader>h'] = { name = 'Git [H]unk', _ = 'which_key_ignore' },
    }

    -- visual mode
    wk.register({
      ['<leader>h'] = { 'Git [H]unk' },
    }, { mode = 'v' })
  end,
}
