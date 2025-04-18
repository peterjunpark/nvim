return {
	{
		"sphamba/smear-cursor.nvim",
		event = "VeryLazy",
		cond = vim.g.neovide == nil,
		opts = {
			cursor_color = "none",
			filetypes_disabled = { "ministarter", "oil", "lua" },
		},
	},
	{
		"echasnovski/mini.icons",
		version = false,
		opts = {},
	},
	{
		"echasnovski/mini.statusline",
		version = false,
		opts = {},
	},
	{
		"echasnovski/mini.tabline",
		version = false,
		opts = {},
	},
	{
		"echasnovski/mini.starter",
		version = false,
		event = "VimEnter",
		opts = {},
	},
	{
		"echasnovski/mini.indentscope",
		version = false,
		opts = {
			options = {
				try_as_border = true,
			},
			symbol = "│",
		},
		init = function()
			vim.api.nvim_create_autocmd("FileType", {
				pattern = {
					"help",
					"lazy",
					"mason",
				},
				callback = function()
					vim.b.miniindentscope_disable = true
				end,
			})
		end,
	},
	{
		"echasnovski/mini.notify",
		version = false,
		opts = {},
	},
}
