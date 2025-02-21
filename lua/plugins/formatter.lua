return {
	"stevearc/conform.nvim",
	keys = {
		{
			"<leader>w",
			function()
				require("conform").format()
			end,
			mode = { "n", "v" },
			desc = "Format buffer",
		},
	},
	opts = {
		default_format_opts = {
			timeout_ms = 3000,
			async = false,
			quiet = false,
			lsp_format = "fallback",
		},
		notify_on_error = true,
		formatters_by_ft = {
			typescriptreact = { "prettier" },
			typescript = { "prettier" },
			lua = { "stylua" },
			python = { "black" },
			go = { "goimports", "gofmt" },
			fish = { "fish_indent" },
			sh = { "shfmt" },
		},
	},
}
