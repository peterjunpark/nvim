-- Fuzzy find everything.
return {
  'nvim-telescope/telescope.nvim',
  event = 'VimEnter',
  branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { -- If encountering errors, see telescope-fzf-native README for installation instructions
      'nvim-telescope/telescope-fzf-native.nvim',

      -- `build` is used to run some command when the plugin is installed/updated.
      -- This is only run then, not every time Neovim starts up.
      build = 'make',

      -- `cond` is a condition used to determine whether this plugin should be
      -- installed and loaded.
      cond = function()
        return vim.fn.executable 'make' == 1
      end,
    },
    { 'nvim-telescope/telescope-ui-select.nvim' },

    -- Useful for getting pretty icons, but requires a Nerd Font.
    { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
  },
  config = function()
    -- Telescope is a fuzzy finder that comes with a lot of different things that
    -- it can fuzzy find! It's more than just a "file finder", it can search
    -- many different aspects of Neovim, your workspace, LSP, and more!
    --
    -- The easiest way to use Telescope, is to start by doing something like:
    --  :Telescope help_tags
    --
    -- After running this command, a window will open up and you're able to
    -- type in the prompt window. You'll see a list of `help_tags` options and
    -- a corresponding preview of the help.
    --
    -- Two important keymaps to use while in Telescope are:
    --  - Insert mode: <c-/>
    --  - Normal mode: ?
    --
    -- This opens a window that shows you all of the keymaps for the current
    -- Telescope picker. This is really useful to discover what Telescope can
    -- do as well as how to actually do it!

    -- [[ Configure Telescope ]]
    -- See `:help telescope` and `:help telescope.setup()`
    require('telescope').setup {
      -- You can put your default mappings / updates / etc. in here
      --  All the info you're looking for is in `:help telescope.setup()`
      --
      -- defaults = {
      --   mappings = {
      --     i = { ['<c-enter>'] = 'to_fuzzy_refine' },
      --   },
      -- },
      pickers = {},
      extensions = {
        ['ui-select'] = {
          require('telescope.themes').get_dropdown(),
        },
      },
    }

    -- Enable Telescope extensions if they are installed
    pcall(require('telescope').load_extension, 'fzf')
    pcall(require('telescope').load_extension, 'ui-select')

    -- See `:help telescope.builtin`
    local builtin = require 'telescope.builtin'
    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Buffers' })
    vim.keymap.set('n', '<leader>ff', function()
      builtin.find_files { prompt_title = 'Files' }
    end, { desc = 'Files' })
    vim.keymap.set('n', '<leader>fq', builtin.quickfix, { desc = 'Quickfix list' })
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Help tags' })
    vim.keymap.set('n', '<leader>fk', function()
      builtin.keymaps { prompt_title = 'Keymaps' }
    end, { desc = 'Keymaps' })
    vim.keymap.set('n', '<leader>fp', function()
      builtin.builtin { prompt_title = 'Pickers' }
    end, { desc = 'Telescope pickers' })
    vim.keymap.set('n', '<leader>fw', function()
      builtin.grep_string { prompt_title = 'Grep string' }
    end, { desc = 'Current word' })
    vim.keymap.set('n', '<leader>fd', builtin.diagnostics, { desc = 'Diagnostics' })
    vim.keymap.set('n', '<leader>f.', builtin.resume, { desc = 'Resume search' })
    vim.keymap.set('n', '<leader>fo', builtin.oldfiles, { desc = 'Oldfiles' })

    -- Slightly advanced example of overriding default behavior and theme
    vim.keymap.set('n', '<leader>f/', function()
      -- You can pass additional configuration to Telescope to change the theme, layout, etc.
      builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
        winblend = 2,
        previewer = false,
      })
    end, { desc = 'Fuzzy current buffer' })

    -- It's also possible to pass additional configuration options.
    --  See `:help telescope.builtin.live_grep()` for information about particular keys
    -- vim.keymap.set('n', '<leader>fg', function()
    --   builtin.live_grep {
    --     grep_open_files = true,
    --     prompt_title = 'Live Grep in Open Files',
    --   }
    -- end, { desc = 'Live grep in open files' })

    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Live grep' })

    -- Shortcut for searching your Neovim configuration files
    vim.keymap.set('n', '<leader>fc', function()
      builtin.find_files { cwd = vim.fn.stdpath 'config', prompt_title = 'Neovim config' }
    end, { desc = 'Neovim config' })
  end,
}
