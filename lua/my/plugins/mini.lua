return {
  'echasnovski/mini.nvim',
  version = false,
  config = function()
    -- NOTE: Better around/inside textobjects.
    require('mini.ai').setup { n_lines = 500 }

    -- Examples:
    --  - va)  - [V]isually select [A]round [)]paren
    --  - yinq - [Y]ank [I]nside [N]ext [']quote
    --  - ci'  - [C]hange [I]nside [']quote

    -- NOTE: Animate common movements
    require('mini.animate').setup()

    -- NOTE: Remove buffers while saving window layout.
    require('mini.bufremove').setup()

    -- NOTE: Start screen.
    local starter = require 'mini.starter'
    local starter_section = function(name, action, section)
      return { name = name, action = action, section = section }
    end

    starter.setup {
      evaluate_single = true,
      items = {
        starter_section('Restore session', [[lua require('persistence').load()]], ''),
        starter_section('New file', 'ene | startinsert', ''),
        starter_section('Find file', 'Telescope find_files', 'Telescope'),
        starter_section('Oldfiles', 'Telescope oldfiles', 'Telescope'),
        starter_section('Grep text', 'Telescope live_grep', 'Telescope'),
        starter_section('Lazy', 'Lazy', 'Config'),
        starter_section('Mason', 'Mason', 'Config'),
        starter_section('Quit', 'qa', ''),
      },
      footer = '',
      content_hooks = {
        starter.gen_hook.adding_bullet(),
        starter.gen_hook.aligning('center', 'center'),
      },
    }

    require('mini.statusline').setup()

    -- NOTE: Quickly edit surroundings (brackets, quotes, etc.).
    require('mini.surround').setup()

    -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
    -- - sd'   - [S]urround [D]elete [']quotes
    -- - sr)'  - [S]urround [R]eplace [)] [']
  end,
}
