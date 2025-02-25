local function map(keys, func, desc, mode)
	mode = mode or "n"
	vim.keymap.set(mode, keys, func, { desc = desc })
end

-- Move up and down through wrapped lines
map("j", "gj")
map("k", "gk")

-- Don't yank on x
map("x", '"_x')

-- Move lines up and down in visual mode.
map("J", ":m '>+1<CR>gv=gv", "Move line down", "v")
map("K", ":m '<-2<CR>gv=gv", "Move line up", "v")

-- Cycle through buffers.
map("<Tab>", "<cmd>bnext<CR>")
map("<Backspace>", "<cmd>bprev<CR>")

map("g/", "<Esc>/\\%V", "Search inside selection", "x")

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
map("<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
map("<leader>x", vim.diagnostic.setloclist, "Open quickfix list")

-- Terminal keymaps
map("<leader>t", function()
	vim.cmd.vnew()
	vim.cmd.term()
	vim.cmd.wincmd "J"
	vim.api.nvim_win_set_height(0, 15)
end, "Terminal")
map("<Esc><Esc>", "<C-\\><C-n>", "Exit terminal mode", "t")

-- Lua
map("<leader>L", "<cmd>source %<CR>", "Lua: Source file")
map("<leader>l", ":.lua<CR>", "Lua: Execute line")
map("<leader>l", ":lua<CR>", "Lua: Execute selection", "v")
