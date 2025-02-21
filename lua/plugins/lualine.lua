local icons = require "icons"

return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "mini.icons" },
	opts = {
		options = {
			globalstatus = vim.o.laststatus == 3,
			component_separators = { left = "", right = "" },
			section_separators = { left = "", right = "" },
		},
		disabled_filetypes = {
			winbar = { "help" },
		},
		sections = {
			lualine_a = { "mode" },
			lualine_b = { "branch" },
			lualine_c = { "vim.fn.getcwd():gsub('^' .. os.getenv 'HOME', '~') .. '/'" },
			lualine_x = {},
			lualine_y = { { "buffers", symbols = { alternate_file = "" } } },
			lualine_z = { "progress", "location" },
		},
		inactive_sections = {},
		winbar = {
			lualine_a = {},
			lualine_b = {},
			lualine_c = {
				{
					"diff",
					symbols = {
						added = icons.git.added,
						modified = icons.git.modified,
						removed = icons.git.removed,
					},
				},
				{
					"diagnostics",
					symbols = {
						error = icons.diagnostics.Error,
						warn = icons.diagnostics.Warn,
						info = icons.diagnostics.Info,
						hint = icons.diagnostics.Hint,
					},
				},
			},
			lualine_x = {
				{ "filetype", icon_only = true, padding = 0 },
				{
					"filename",
					path = 1,
					padding = 0,
					symbols = { modified = "●" },
				},
			},
			lualine_y = {},
			lualine_z = {},
		},
		inactive_winbar = {
			lualine_a = {},
			lualine_b = {},
			lualine_c = {
				{
					"diff",
					colored = false,
					symbols = {
						added = icons.git.added,
						modified = icons.git.modified,
						removed = icons.git.removed,
					},
				},
				{
					"diagnostics",
					colored = false,
					symbols = {
						error = icons.diagnostics.Error,
						warn = icons.diagnostics.Warn,
						info = icons.diagnostics.Info,
						hint = icons.diagnostics.Hint,
					},
				},
			},
			lualine_x = {
				{ "filetype", icon_only = true, colored = false, padding = 0 },
				{ "filename", path = 1, padding = 0, symbols = { modified = "●" } },
			},
			lualine_y = {},
			lualine_z = {},
		},
	},
	config = function(_, opts)
		MiniIcons.mock_nvim_web_devicons()
		require("lualine").setup(opts)
	end,
}
