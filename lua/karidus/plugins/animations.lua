return {
	"echasnovski/mini.animate",
	event = "VeryLazy",
	config = function()
		local animate = require('mini.animate')
		animate.setup({
			scroll = {
				enable = false,
			},
			resize = {
				enable = true,
			},
			open = {
				enable = true,
			},
			close = {
				enable = true,
			},
			cursor = {
				enable = true,
				timing = animate.gen_timing.quartic({
					duration = 600, unit = 'total'
				}),
				path = animate.gen_path.line({
					predicate = function() return true end, width = 16
				}),
			}
		})
	end
}
