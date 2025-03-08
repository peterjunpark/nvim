return {
	{
		"saghen/blink.cmp",
		dependencies = {
			"rafamadriz/friendly-snippets",
			"mini.snippets",
		},
		version = "*",
		---@module 'blink.cmp'
		---@type blink.cmp.Config
		opts = {
			snippets = { preset = "mini_snippets" },
			keymap = {
				preset = "default",
			},
			appearance = {
				nerd_font_variant = "mono",
			},
			completion = {
				menu = { border = "single" },
				documentation = { window = { border = "single" } },
			},
			signature = { window = { border = "single" } },
			-- Default list of enabled providers defined so that you can extend it
			-- elsewhere in your config, without redefining it, due to `opts_extend`
			sources = {
				default = { "lazydev", "lsp", "path", "snippets", "buffer" },
				providers = {
					lazydev = {
						name = "LazyDev",
						module = "lazydev.integrations.blink",
						score_offset = 100,
					},
				},
			},
		},
		opts_extend = { "sources.default" },
	},
	{
		"echasnovski/mini.snippets",
		version = false,
		config = function()
			local gen_loader = require("mini.snippets").gen_loader
			require("mini.snippets").setup {
				snippets = {
					gen_loader.from_file "~/.config/nvim/snippets/global.json",
					gen_loader.from_lang(),
				},
			}
		end,
	},
}
