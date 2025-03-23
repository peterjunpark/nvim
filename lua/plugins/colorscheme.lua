return {
	{
		"folke/tokyonight.nvim",
		opts = {
			style = "night",
			styles = {
				comments = { italic = true },
				keywords = { italic = false },
			},
		},
		config = function(_, opts)
			require("tokyonight").setup(opts)
			vim.cmd.colorscheme "tokyonight"
		end,
	},
}
