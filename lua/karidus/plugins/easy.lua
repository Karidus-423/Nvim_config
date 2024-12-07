return {
	{
		'echasnovski/mini.pairs',
		version = false,
		opts = {},
	},
	{
		"NoahTheDuke/vim-just",
		dependencies = { "IndianBoy42/tree-sitter-just" },
		ft = { "just" }
	},
	{
		"nvzone/volt",
		{ "nvzone/timerly", cmd = "TimerlyToggle" }
	},
	{
		"smithbm2316/centerpad.nvim",
		lazy = true,
		opts = {},
	}
}
