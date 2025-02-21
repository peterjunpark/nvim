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
			lualine_c = {},
			lualine_x = {},
			lualine_y = { "progress" },
			lualine_z = { "location" },
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
				{ "filename", path = 1 },
				{ "filetype", icon_only = true },
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
			lualine_x = { { "filename", path = 1 } },
			lualine_y = {},
			lualine_z = {},
		},
		-- extensions = { "lazy", "mason", "oil" },
	},
	config = function(_, opts)
		MiniIcons.mock_nvim_web_devicons()
		require("lualine").setup(opts)
	end,
}
