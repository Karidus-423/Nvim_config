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
			lspconfig.ts_ls.setup({})
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
			-- ZLS
			lspconfig.zls.setup({})
			--CMAKE
			lspconfig.cmake.setup({})
			--Go
			lspconfig.gopls.setup({})
			--Glsls
			lspconfig.glsl_analyzer.setup({})
		end

	},
	{ 'neovim/nvim-lspconfig' },
	{ "folke/neodev.nvim",    ft = { "lua" }, opts = {} },

}
