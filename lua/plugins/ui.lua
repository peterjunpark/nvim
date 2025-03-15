return {
	{
		"echasnovski/mini.icons",
		version = false,
		opts = {},
	},
	{
		"echasnovski/mini.notify",
		version = false,
		opts = {},
	},
	{
		"sphamba/smear-cursor.nvim",
		event = "VeryLazy",
		cond = vim.g.neovide == nil,
		opts = {
			cursor_color = "none",
			filetypes_disabled = { "ministarter", "oil", "lua" },
		},
	},
}
