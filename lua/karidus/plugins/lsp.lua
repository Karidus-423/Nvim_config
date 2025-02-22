return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			{ "folke/neodev.nvim", ft = { "lua" }, opts = {} },
		},
		config = function()
			local lsp = require("lspconfig")
			--Lua
			lsp.lua_ls.setup({})
			--Clang
			lsp.clangd.setup({})
			--Zig
			lsp.zls.setup({})
			--Go
			lsp.gopls.setup({})
			--Deno
			lsp.denols.setup({
				root_dir = lsp.util.root_pattern("deno.json", "deno.jsonc"),
			})
			--Java
			lsp.jdtls.setup({})
			--Kotlin
			lsp.kotlin_language_server.setup({})
			--Go
			lsp.gopls.setup({})

			--General LSP Settings
			vim.diagnostic.config({
				signs = {
					text = {
						[vim.diagnostic.severity.ERROR] = '',
						[vim.diagnostic.severity.WARN] = '',
						[vim.diagnostic.severity.HINT] = '⚑',
						[vim.diagnostic.severity.INFO] = '󰙎',
					},
				},
				float = {
					border = "single",
					header = "",
					prefix = "",
					source = true,
				},
				jump = {
					float = { border = 'single' },
				},
			})
			vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
				vim.lsp.handlers.hover, {
					border = "single"
				}
			)
		end
	},
}
