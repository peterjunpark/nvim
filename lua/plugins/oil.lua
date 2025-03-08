return {
	"stevearc/oil.nvim",
	keys = { "<leader>e" },
	dependencies = {
		"mini.icons",
	},
	config = function()
		local oil = require "oil"
		local detail = false

		oil.setup {
			default_file_explorer = true,
			-- skip_confirm_for_simple_edits = true,
			view_options = {
				show_hidden = true,
			},
			keymaps = {
				["q"] = "actions.close",
				["<CR>"] = "actions.select",
				["<C-v>"] = {
					"actions.select",
					opts = { vertical = true },
					desc = "Open the entry in a vertical split",
				},
				["<C-x>"] = {
					"actions.select",
					opts = { horizontal = true },
					desc = "Open the entry in a horizontal split",
				},
				["<C-t>"] = { "actions.select", opts = { tab = true }, desc = "Open the entry in new tab" },
				["<C-p>"] = "actions.preview",
				["<C-l>"] = "actions.refresh",
				["g?"] = "actions.show_help",
				["gd"] = {
					desc = "Toggle file detail view",
					callback = function()
						detail = not detail
						if detail then
							require("oil").set_columns { "icon", "permissions", "size", "mtime" }
						else
							require("oil").set_columns { "icon" }
						end
					end,
				},
				["-"] = "actions.parent",
				["_"] = "actions.open_cwd",
				["`"] = "actions.cd",
				["~"] = { "actions.cd", opts = { scope = "tab" }, desc = ":tcd to the current oil directory" },
				["gs"] = "actions.change_sort",
				["gx"] = "actions.open_external",
				["g."] = "actions.toggle_hidden",
				["g\\"] = "actions.toggle_trash",
			},
			float = {
				border = "single",
			},
			confirmation = {
				border = "single",
			},
			ssh = {
				border = "single",
			},
			keymaps_help = {
				border = "single",
			},
		}

		vim.keymap.set("n", "<leader>e", oil.open, { desc = "Oil: Current dir" })
	end,
}
