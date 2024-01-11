local colored_fts = {
	"cfg",
	"conf",
	"lua",
	"scss",
	"js",
	"tsx",
	"css",
	"dosini",
	"json",
	"javascript",
	"yaml",
}

-- Create Color Code.
return {
	{
		"uga-rosa/ccc.nvim",
		ft = colored_fts,
		cmd = "CccPick",
		config = function()
			vim.opt.termguicolors = true

			local ccc = require("ccc")
			local mapping = ccc.mapping
			ccc.setup({
				highlighter = {
					auto_enable = true,
					filetypes = colored_fts,
				},
			})

			-- Use uppercase for hex codes.
			ccc.output.hex.setup({ uppercase = true })
			ccc.output.hex_short.setup({ uppercase = true })
		end,
	},
}
