local parsers = {
	'bash',
	'c',
	'dart',
	'diff',
	'fish',
	'go',
	'gomod',
	'gosum',
	'gowork',
	'html',
	'http',
	'javascript',
	'jq',
	'jsdoc',
	'json',
	'latex',
	'lua',
	'luadoc',
	'luap',
	'markdown',
	'markdown_inline',
	'odin',
	'printf',
	'python',
	'query',
	'regex',
	'rst',
	'ruby',
	'sql',
	'svelte',
	'toml',
	'tsx',
	'typescript',
	'vim',
	'vimdoc',
	'xml',
	'yaml',
}

return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require "nvim-treesitter.configs"

		configs.setup {
			ensure_installed = parsers,
			auto_install = true,
			highlight = { enable = true },
			indent = { enable = true },
		}
	end,
}
