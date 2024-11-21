return {

		'saghen/blink.cmp',
		lazy = false, -- lazy loading handled internally
		-- optional: provides snippets for the snippet source
		dependencies = 'rafamadriz/friendly-snippets',
		-- use a release tag to download pre-built binaries
		version = 'v0.*',
		-- OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
		-- build = 'cargo build --release',
		-- If you use nix, you can build from source using latest nightly rust with:
		-- build = 'nix run .#build-plugin',

		---@module 'blink.cmp'
		---@type blink.cmp.Config
		opts = {
			keymap = {
				['<K>'] = { 'show', 'show_documentation', 'hide_documentation' },
				-- disable a keymap from the preset
				['<C-e>'] = {},
			},
			blocked_filetypes = { 'markdown' },
			highlight = {
				use_nvim_cmp_as_default = true,
			},
			nerd_font_variant = 'normal',
			windows = {
				autocomplete = {
					border = 'single',
				},
				documentation = {
					border = 'single',
				},
			},
		}
	},
	{
		'neovim/nvim-lspconfig',
		dependencies = { 'saghen/blink.cmp' },
		config = function(_, opts)
			local lspconfig = require('lspconfig')
			for server, config in pairs(opts.servers or {}) do
				config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)
				lspconfig[server].setup(config)
			end
		end
	}
