return {
	"echasnovski/mini.pick",
	version = false,
	lazy = false,
	-- stylua: ignore
	keys = {
		{ "<leader>f", function() MiniPick.builtin.files() end, desc = "Pick: Files" },
		{ "<leader>/", function() MiniPick.builtin.grep_live() end, desc = "Pick: Grep" },
		{ "<leader>?", function() MiniPick.builtin.help() end, desc = "Pick: Help" },
		{ "<leader>.", function() MiniPick.builtin.resume() end, desc = "Pick: Resume" },
		{
			"<leader>pn",
			function()
				local opts = { source = { cwd = vim.fn.stdpath "config" } }
				MiniPick.builtin.files { opts = opts }
			end,
			desc = "Pick: Neovim config",
		},
	},
	opts = {},
}
