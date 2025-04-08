--  See `:help lua-guide-autocommands`
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking text",
	group = vim.api.nvim_create_augroup("pp-highlight-on-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

local function is_filetype_excluded()
	local excluded_filetypes = { "minifiles" }
	local current_filetype = vim.bo.filetype
	for _, filetype in ipairs(excluded_filetypes) do
		if current_filetype == filetype then
			return true
		end
	end
	return false
end

-- Turn on relative line numbers in normal mode and off in insert mode
vim.api.nvim_create_autocmd("InsertEnter", {
	pattern = "*",
	callback = function()
		if not is_filetype_excluded() then
			vim.wo.relativenumber = false
		end
	end,
})

vim.api.nvim_create_autocmd("InsertLeave", {
	pattern = "*",
	callback = function()
		if not is_filetype_excluded() then
			vim.wo.relativenumber = true
		end
	end,
})
