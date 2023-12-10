return {
	"echasnovski/mini.map",

	config = function()
		local mini = require("mini.map")
		vim.keymap.set("n", "<Leader>mo", mini.open)
	end,
}
