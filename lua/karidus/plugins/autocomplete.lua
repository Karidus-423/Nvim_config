return {
	'saghen/blink.cmp',
	dependencies = 'rafamadriz/friendly-snippets',

	version = '*',

	---@module 'blink.cmp'
	---@type blink.cmp.Config
	opts = {
		keymap = {
			['<C-y>'] = { 'select_and_accept' },
			['<Up>'] = { 'select_prev', 'fallback' },
			['<Down>'] = { 'select_next', 'fallback' },
		},

		appearance = {
			use_nvim_cmp_as_default = false,
			nerd_font_variant = 'mono'
		},

		sources = {
			default = { 'lsp', 'path', 'snippets', 'buffer' },
		},

		completion = {
			menu = { border = 'single' },
		},
	},
	opts_extend = { "sources.default" }
}
