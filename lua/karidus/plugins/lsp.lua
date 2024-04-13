return {
	{
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		config = function()
			local lsp_zero = require('lsp-zero')
			lsp_zero.extend_lspconfig()

			lsp_zero.on_attach(
				function(client, bufnr)
					-- see :help lsp-zero-keybindings
					-- to learn the available actions
					lsp_zero.default_keymaps({
						buffer = bufnr,
						preserve_mappings = false
					})
					-- Custom Keymaps
					vim.keymap.set('n', 'gr', '<cmd>Telescope lsp_references<cr>', { buffer = bufnr })
				end)
			lsp_zero.set_sign_icons({
				error = '',
				warn = '',
				hint = '',
				info = ''
			})
			-- here you can setup the language servers
			local lspconfig = require('lspconfig')
			-- C/C++
			lspconfig.clangd.setup({})
			-- Nix
			lspconfig.nil_ls.setup({})
			--Python
			lspconfig.pyright.setup({})
			-- Lua
			require('neodev').setup()
			lspconfig.lua_ls.setup({})
			-- Typescript
			lspconfig.tsserver.setup({})
			-- CSS
			local capabilities = vim.lsp.protocol.make_client_capabilities()
			capabilities.textDocument.completion.completionItem.snippetSupport = true

			require 'lspconfig'.cssls.setup {
				capabilities = capabilities,
			}
			-- Bash
			lspconfig.bashls.setup({})
			-- GDScript
			lspconfig.gdscript.setup({})
		end

	},
	{ 'neovim/nvim-lspconfig' },
	{ 'hrsh7th/cmp-nvim-lsp' },
	{
		'hrsh7th/nvim-cmp',
		dependencies = {
			"onsails/lspkind.nvim"
		},
		config = function()
			local cmp = require('cmp')
			local lspkind = require('lspkind')
			cmp.setup({
				formatting = {
					expandable_indicator = true,
					format = lspkind.cmp_format({
						mode = 'symbol_text',
						maxwidth = 50,
						ellipsis_char = '...', -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)
						show_labelDetails = true, -- show labelDetails in menu. Disabled by default
						menu = ({
							buffer = "[Buffer]",
							nvim_lsp = "[LSP]",
							luasnip = "[LuaSnip]",
							nvim_lua = "[Lua]",
							latex_symbols = "[Latex]",
						})
					}),
					fields = {
						'abbr', 'kind', 'menu'
					},
				},
				mapping = cmp.mapping.preset.insert({
					-- `Enter` key to confirm completion
					['<CR>'] = cmp.mapping.confirm({ select = false }),

					-- Ctrl+f to trigger completion menu
					['<C-f>'] = cmp.mapping.complete(),

					-- Scroll up and down in the completion documentation
					['<C-s>'] = cmp.mapping.scroll_docs(-4),
					['<C-d>'] = cmp.mapping.scroll_docs(4),
				}),
				window = {
					documentation = cmp.config.window.bordered(),
				},
				sources = cmp.config.sources({
					{ name = 'nvim_lsp' },
					-- { name = 'vsnip' }, -- For vsnip users.
					{ name = 'luasnip' }, -- For luasnip users.
					-- { name = 'ultisnips' }, -- For ultisnips users.
					-- { name = 'snippy' }, -- For snippy users.
				}, {
					{ name = 'buffer' },
				}),
			})
		end,
	},
	{
		'L3MON4D3/LuaSnip',
		dependencies = { "rafamadriz/friendly-snippets" },
	},
	{ "folke/neodev.nvim", ft = { "lua" }, opts = {} },

}
