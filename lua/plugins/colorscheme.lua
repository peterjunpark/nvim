return {
	"rose-pine/neovim",
	name = "rose-pine",
	lazy = false,
	priority = 1000,
	opts = {
		variant = "main",
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
	config = function(_, opts)
		require("rose-pine").setup(opts)
		vim.cmd.colorscheme "rose-pine"
	end,
	-- "projekt0n/github-nvim-theme",
	-- name = "github-theme",
	-- lazy = false,
	-- priority = 1000,
	-- opts = {},
	-- config = function(_, opts)
	-- 	require("github-theme").setup(opts)
	-- 	vim.cmd.colorscheme "github_dark_dimmed"
	-- end,
}
