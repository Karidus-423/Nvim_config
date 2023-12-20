return {
	"echasnovski/mini.indentscope",
	version = "*",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		options = {
			indent_at_cursor = false,
		},
		symbol = "╽",
	},
}
