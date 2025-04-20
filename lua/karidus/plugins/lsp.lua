return {
	{
		"neovim/nvim-lspconfig",
		config = function()
			--Lua
			vim.lsp.enable('lua_ls')
			--C/C++
			vim.lsp.enable('clangd')
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
			vim.api.nvim_create_autocmd('LspAttach', {
				callback = function(event)
					vim.keymap.set('n', 'K', function()
						vim.lsp.buf.hover {
							max_height = 20,
							max_width = 50,
							border = 'single',
						}
					end, { buffer = event.buf })
				end,
			})
		end
	},
}
