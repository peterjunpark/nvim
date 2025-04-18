--[[
                                  .-----.
       .----------------------.   | === |
       |.-""""""""""""""""""-.|   |-----|
       ||                    ||   | === |
       ||    peterjunpark    ||   |-----|
       ||                    ||   | === |
       ||                   ||   |-----|
       ||                    ||   |:::::|
       |'-..................-'|   |____o|
       `"")----------------(""`   ___________
      /::::::::::|  |::::::::::\  \ no mouse \
     /:::========|  |==hjkl==:::\  \ required \
    '""""""""""""'  '""""""""""""'  '""""""""""'
--]]

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system { "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath }
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

require "opts"
require "keymaps"
require "autocmds"
require "custom.terminal"

-- Setup lazy.nvim
require("lazy").setup {
	spec = {
		-- Import lua/plugins/
		{ import = "plugins" },
	},
	-- Configure any other settings here. See the documentation for more details.
	install = { colorscheme = { "rose-pine" } },
	-- Automatically check for plugin updates.
	checker = { enabled = true },
	ui = {
		border = "single",
	},
}
