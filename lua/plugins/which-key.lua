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
			{ "<leader>ol", "<cmd>Lazy<CR>", desc = "Lazy" },
		},
	},
}
