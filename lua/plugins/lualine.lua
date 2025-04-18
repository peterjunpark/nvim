-- local icons = require "icons"
-- local palette = require("tokyonight.colors").setup()
--
-- local function get_indent_info()
-- 	local tabstop = vim.bo.tabstop
-- 	local expandtab = vim.bo.expandtab
-- 	local buftype = vim.bo.buftype
-- 	if buftype == "terminal" or buftype == "help" then
-- 		return ""
-- 	end
-- 	return (expandtab and icons.keys.Space or icons.keys.Tab) .. tabstop
-- end
--
-- -- Shared winbar sections
-- local winbar_sections = {
-- 	lualine_b = {
-- 		"%03l/%03L:%03c",
-- 		{ get_indent_info, padding = { left = 0, right = 1 } },
-- 	},
-- 	lualine_c = {
-- 		{ "diff", symbols = { added = icons.git.added, modified = icons.git.modified, removed = icons.git.removed } },
-- 		"%=",
-- 		{ "lsp_status", icon = "", padding = { left = 0, right = 1 } },
-- 		{
-- 			"diagnostics",
-- 			symbols = {
-- 				error = icons.diagnostics.Error,
-- 				warn = icons.diagnostics.Warn,
-- 				info = icons.diagnostics.Info,
-- 				hint = icons.diagnostics.Hint,
-- 			},
-- 		},
-- 	},
-- 	lualine_x = {
-- 		{ "filetype", icon_only = true, padding = 0 },
-- 		{ "filename", path = 1, padding = 0, symbols = { modified = "●" } },
-- 	},
-- }
--
-- return {
-- 	"nvim-lualine/lualine.nvim",
-- 	dependencies = { "mini.icons" },
-- 	enabled = false,
-- 	opts = {
-- 		options = {
-- 			globalstatus = vim.o.laststatus == 3,
-- 			component_separators = { left = "", right = "" },
-- 			section_separators = { left = "", right = "" },
-- 		},
-- 		disabled_filetypes = {
-- 			winbar = { "help" },
-- 		},
-- 		sections = {
-- 			lualine_a = {
-- 				{
-- 					"mode",
-- 					fmt = function(str)
-- 						if vim.fn.reg_recording() ~= "" then
-- 							return "REC"
-- 						else
-- 							local modes = {
-- 								COMMAND = "CMD",
-- 								["O-PENDING"] = "OP?",
-- 							}
-- 							return modes[str] or str:sub(1, 3)
-- 						end
-- 					end,
-- 					color = function()
-- 						if vim.fn.reg_recording() ~= "" then
-- 							return { bg = palette.red1 }
-- 						end
-- 						-- nil means default color is used.
-- 					end,
-- 				},
-- 			},
-- 			lualine_b = {
-- 				"branch",
-- 			},
-- 			lualine_c = {
-- 				function()
-- 					return vim.fn.getcwd():gsub("^" .. os.getenv "HOME", "~") .. "/"
-- 				end,
-- 			},
-- 			lualine_x = {},
-- 			lualine_y = {},
-- 			lualine_z = { { "buffers", symbols = { alternate_file = "" } } },
-- 		},
-- 		winbar = winbar_sections,
-- 		inactive_winbar = vim.tbl_deep_extend("force", {}, winbar_sections, {
-- 			lualine_b = {
-- 				"%03l/%03L:%03c",
-- 				{ get_indent_info, padding = { left = 0, right = 1 } },
-- 			},
-- 			lualine_c = {
-- 				{
-- 					"diff",
-- 					colored = false,
-- 					symbols = { added = icons.git.added, modified = icons.git.modified, removed = icons.git.removed },
-- 				},
-- 				"%=",
-- 				{ "lsp_status", icon = "", padding = { left = 0, right = 1 } },
-- 				{
-- 					"diagnostics",
-- 					colored = false,
-- 					symbols = {
-- 						error = icons.diagnostics.Error,
-- 						warn = icons.diagnostics.Warn,
-- 						info = icons.diagnostics.Info,
-- 						hint = icons.diagnostics.Hint,
-- 					},
-- 				},
-- 			},
-- 			lualine_x = {
-- 				{ "filetype", icon_only = true, colored = false, padding = 0 },
-- 				{ "filename", path = 1, padding = 0, symbols = { modified = "●" } },
-- 			},
-- 		}),
-- 	},
-- 	config = function(_, opts)
-- 		MiniIcons.mock_nvim_web_devicons()
-- 		require("lualine").setup(opts)
-- 	end,
-- }
--
return {}
