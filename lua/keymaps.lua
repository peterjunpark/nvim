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

-- Easier window controls
map("<leader>pv", "<C-w>v", "Vsplit")
map("<leader>ps", "<C-w>s", "Split")
map("<leader>pc", "<C-w>c", "Close pane")
map("<leader>po", "<C-w>o", "Close other panes")
map("<leader>pp", "<C-w>w", "Switch panes")
map("<leader>ph", "<C-w>h", "Go to left pane")
map("<leader>pj", "<C-w>j", "Go to below pane")
map("<leader>pk", "<C-w>k", "Go to above pane")
map("<leader>pl", "<C-w>l", "Go to right pane")
map("<leader>px", "<C-w>x", "Swap current pane with next")

map("g/", "<Esc>/\\%V", "Search inside selection", "x")

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
map("<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
map("<leader>x", vim.diagnostic.setloclist, "Open quickfix list")

-- Lua
map("<leader>L", "<cmd>source %<CR>", "Lua: Source file")
map("<leader>l", ":.lua<CR>", "Lua: Execute line")
map("<leader>l", ":lua<CR>", "Lua: Execute selection", "v")
