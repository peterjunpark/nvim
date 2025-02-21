return {
	{
		"echasnovski/mini.colors",
		version = false,
		opts = {},
	},
	{
		"folke/tokyonight.nvim",
		opts = {},
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		opts = {
			flavour = "mocha",
			styles = {
				conditionals = {},
			},
		},
		config = function(_, opts)
			require("catppuccin").setup(opts)
			vim.cmd.colorscheme "catppuccin"
		end,
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
		priority = 1000,
		lazy = false,
		opts = {
			palette = {
				main = {
					leaf = "#5cc1a3",
				},
			},
			groups = {
				git_add = "leaf",
			},
			highlight_groups = {
				-- Syntax highlighting
				["@constant"] = { fg = "leaf" },
				["@markup.heading"] = { fg = "leaf" },
				["@markup.link.label"] = { fg = "text", italic = true },
				["@markup.link.label.rst"] = { fg = "foam", italic = true },
				["@tag.attribute"] = { fg = "rose" },
				["@variable.member"] = { fg = "iris" },
				["@property"] = { fg = "iris" },
				Number = { fg = "leaf" },
			},
		},
	},
}
