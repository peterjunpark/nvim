return {
	"echasnovski/mini.bufremove",
	version = false,
	keys = { {
		"<leader>q",
		function()
			MiniBufremove.delete()
		end,
		desc = "Delete buffer",
	} },
	opts = {},
}
