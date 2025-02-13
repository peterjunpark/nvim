return {
	"lewis6991/gitsigns.nvim",
	config = function()
		local gitsigns = require "gitsigns"

		gitsigns.setup {
			signs = {
				add = { text = "▎" },
				change = { text = "▎" },
				delete = { text = "" },
				topdelete = { text = "" },
				changedelete = { text = "▎" },
				untracked = { text = "▎" },
			},
			signs_staged = {
				add = { text = "▎" },
				change = { text = "▎" },
				delete = { text = "" },
				topdelete = { text = "" },
				changedelete = { text = "▎" },
			},
			current_line_blame = true,
			current_line_blame_opts = {
				delay = 800,
			},
		}

		vim.keymap.set("n", "<leader>ob", gitsigns.toggle_current_line_blame, { desc = "Toggle: Git blame" })
	end,
}
