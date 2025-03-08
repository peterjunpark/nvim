return {
	{
		"EdenEast/nightfox.nvim",
		opts = {
			options = {
				-- dim_inactive = true,
			},
		},
		config = function(_, opts)
			require("nightfox").setup(opts)
			vim.cmd.colorscheme "duskfox"
		end,
	},
}
