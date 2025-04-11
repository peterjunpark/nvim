return {
	{
		"echasnovski/mini.surround",
		version = false,
		opts = {},
	},
	{
		"echasnovski/mini.ai",
		version = false,
		opts = {
			n_lines = 500,
		},
	},
	{
		"echasnovski/mini.hipatterns",
		version = false,
		config = function()
			local hipatterns = require "mini.hipatterns"
			hipatterns.setup {
				highlighters = {
					fixme = { pattern = "%f[%w]()FIXME()%f[%W]", group = "MiniHipatternsFixme" },
					hack = { pattern = "%f[%w]()HACK()%f[%W]", group = "MiniHipatternsHack" },
					todo = { pattern = "%f[%w]()TODO()%f[%W]", group = "MiniHipatternsTodo" },
					note = { pattern = "%f[%w]()NOTE()%f[%W]", group = "MiniHipatternsNote" },
					hex_color = hipatterns.gen_highlighter.hex_color(),
				},
			}
		end,
	},
	{
		"nvimdev/indentmini.nvim",
		opts = {
			-- only_current = true,
		},
		config = function(_, opts)
			require("indentmini").setup(opts)
		end,
	},
	-- {
	-- 	"rachartier/tiny-inline-diagnostic.nvim",
	-- 	config = function()
	-- 		require("tiny-inline-diagnostic").setup {
	-- 			preset = "powerline",
	-- 		}
	-- 		vim.diagnostic.config {
	-- 			virtual_text = false,
	-- 			signs = {
	-- 				text = {
	-- 					[vim.diagnostic.severity.ERROR] = icons.diagnostics.Error,
	-- 					[vim.diagnostic.severity.WARN] = icons.diagnostics.Warn,
	-- 					[vim.diagnostic.severity.INFO] = icons.diagnostics.Info,
	-- 					[vim.diagnostic.severity.HINT] = icons.diagnostics.Hint,
	-- 				},
	-- 			},
	-- 		}
	-- 	end,
	-- },
}
