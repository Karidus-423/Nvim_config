return {
	{
		"neovim/nvim-lspconfig",
		config = function()
			--C/C++
			vim.lsp.enable('clangd')
			--Lua
			vim.lsp.enable('lua_ls')
			vim.lsp.config('lua_ls', {
				settings = {
					Lua = {
						workspace = {
							checkThirdParty = true,
							library = {
								vim.env.VIMRUNTIME,
								-- Depending on the usage, you might want to add additional paths
								-- here.
								-- '${3rd}/luv/library'
								-- '${3rd}/busted/library'
								'/usr/share/lua/5.3',
								'/usr/share/lua/5.4',
								'/usr/lib/luarocks/rocks-5.4/astal',
							}
							-- Or pull in all of 'runtimepath'.
							-- NOTE: this is a lot slower and will cause issues when working on
							-- your own configuration.
							-- See https://github.com/neovim/nvim-lspconfig/issues/3189
							-- library = {
							--   vim.api.nvim_get_runtime_file('', true),
							-- }
						}
					}
				}
			})

			--Zig
			vim.lsp.enable('zls')
			--JS/TS
			vim.lsp.enable('denols')
			--HTML
			vim.lsp.enable('html')
			--GDScript
			vim.lsp.enable('gdscript')
			--Typst
			vim.lsp.enable('tinymist')
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
