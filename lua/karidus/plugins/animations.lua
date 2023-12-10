return {
	{
		"echasnovski/mini.animate",
		event = "VeryLazy",
		opts = function(_, opts)
			opts.scroll = {
				enable = false,
			}
		end,
	},
	{
		"edluffy/specs.nvim",
		event = "VeryLazy",
		config = function()
			local specs = require("specs")
			specs.setup({
				show_jums = true,
				min_jump = 10,
				popup = {
					fader = require("specs").linear_fader,
					resizer = require("specs").shrink_resizer,
				},
			})
		end,
	},
}
