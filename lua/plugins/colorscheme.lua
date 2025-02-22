return {
	{
		"echasnovski/mini.colors",
		version = false,
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
}
