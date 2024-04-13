return {
	"shellRaining/hlchunk.nvim",
	event = { "UIEnter" },
	config = function()
		require("hlchunk").setup({
			chunk = {
				enable = false,
				error_sign = false,
				chars = {
					horizontal_line = "─",
					vertical_line = "│",
					left_top = "╭",
					left_bottom = "╰",
					right_arrow = ">",
				},
				style = "#90bf69",
			},
			indent = {
				enable = true,
				chars = { "¦" },
				style = { "#7e8180" },
			},
			line_num = {
				enable = false,
			},
			blank = {
				enable = false,
			}
		})
	end

}
