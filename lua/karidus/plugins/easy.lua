return {
	{ "nvim-treesitter/playground" },
	{
		"echasnovski/mini.hipatterns",
		event = "BufReadPre",
		opts = {
			highlighters = {
				hsl_color = {
					pattern = "hsl%(%d+,? %d+,? %d+%)",
					group = function(_, match)
						local utils = require("solarized-osaka.hs1")
						--- @type string, string, string
						local nh, ns, nl = match:match("hsl%((%d+),? (%d+),? (%d+)%)")
						--- @type number?, number?, number?
						local h, s, l = tonumber(nh), tonumber(ns), tonumber(nl)
						--- @type string
						local hex_color = utils.hslToHex(h, s, l)
						return MiniHipatterns.compute_hex_color_group(hex_color, "bg")
					end,
				},
			},
		},
	},
	{ "windwp/nvim-autopairs", event = "InsertEnter", opts = {} },
}
