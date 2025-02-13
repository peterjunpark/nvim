return {
	"folke/which-key.nvim",
	opts = {
		preset = "helix",
		win = {
			border = "single",
		},
		spec = {
			{ "<leader>o", group = "Options" },
			{ "<leader>p", group = "Pick" },
		},
	},
}
