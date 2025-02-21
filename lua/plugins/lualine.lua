return {
	"nvim-lualine/lualine.nvim",
	opts = {
		options = {
			component_separators = { left = "", right = "" },
			section_separators = { left = "", right = "" },
		},
		sections = {
			lualine_a = { "mode" },
			lualine_b = { "branch", "diff", "diagnostics" },
			lualine_c = { "tabs" },
			lualine_x = { "encoding", "fileformat", "filetype" },
			lualine_y = { "progress" },
			lualine_z = { "location" },
		},
		inactive_sections = {},
		tabline = {
			lualine_a = {},
			lualine_b = { "buffers" },
			lualine_c = {},
			lualine_x = {},
			lualine_y = { "tabs" },
			lualine_z = {},
		},
		winbar = {},
		inactive_winbar = {
			-- lualine_a = {},
			-- lualine_b = {},
			-- lualine_c = {},
			-- lualine_x = { "filename" },
			-- lualine_y = {},
			-- lualine_z = {},
		},
		-- extensions = { "lazy", "mason", "oil" },
	},
	config = function(_, opts)
		require("lualine").setup(opts)
		vim.opt.laststatus = 0
	end,
}
