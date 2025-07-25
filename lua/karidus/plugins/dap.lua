return {
	'mfussenegger/nvim-dap',
	dependencies = {
		'rcarriga/nvim-dap-ui',
		'theHamsta/nvim-dap-virtual-text',
		'nvim-treesitter/nvim-treesitter',
		'nvim-neotest/nvim-nio',
	},
	config = function()
		local dap = require('dap')
		local utils = require('dap.utils')
		-- local sessions = require('karidus.plugins.dap-sessions')
		--Helper Functions
		local function build_args(file_name, mode)
			local file_fn = file_name .. "_fn.json"
			local file_smt = file_name .. ".smt2"
			local file_json = file_name .. ".json"
			return { file_smt, file_fn, file_json, mode }
		end
		--Adapters
		dap.adapters.lldb = {
			type = 'executable',
			command = vim.fn.exepath('lldb-dap'),
			name = 'lldb',
		}
		--Configs
		dap.configurations.cpp = {
			-- sessions.load_config('cpp'),
			{
				name = 'SMTExtract',
				type = 'lldb',
				request = 'launch',
				program = utils.pick_file({
					filter = "^[^%.]+$" or "%.out$"
				}),
				cwd = '${workspaceFolder}/build',
				stopOnEntry = false,
				args = function()
					local base = vim.fn.input("Input file base name:")
					local flags = vim.fn.input("Input mode:")
					local args = build_args(base, flags)
					print(table.concat(args, " "))
					return args
				end,
			},
		}
		dap.configurations.c = dap.configurations.cpp
		--UI
		local dapui = require('dapui')
		dapui.setup()


		vim.keymap.set("n", "<F5>",
			function()
				dapui.open()
				dap.continue()
			end,
			{
				desc = "Start/Continue Debugger",
			}
		)

		vim.keymap.set("n", "<F6>",
			function()
				dapui.close()
				dap.terminate()
			end,
			{
				desc = "Stop Debugger",
			}
		)

		vim.keymap.set("n", "<leader>bp",
			function()
				dap.toggle_breakpoint()
			end,
			{
				desc = "Set Breakpoint",
			}
		)

		vim.keymap.set("n", "<leader>cb",
			function()
				dap.clear_breakpoints()
			end,
			{
				desc = "Clear All Breakpoints",
			}
		)

		vim.keymap.set("n", "<leader>da",
			function()
				dap.run_last()
			end,
			{
				desc = "Debug config again.",
			}
		)

		vim.keymap.set("n", "<Down>",
			function()
				dap.step_into()
			end,
			{
				desc = "Step Into",
			}
		)

		vim.keymap.set("n", "<Up>",
			function()
				dap.step_over()
			end,
			{
				desc = "Step Over",
			}
		)

		vim.keymap.set("n", "<Right>",
			function()
				dap.step_out()
			end,
			{
				desc = "Step Out",
			}
		)
		--Virtual Text
		require("nvim-dap-virtual-text").setup({ commented = true, })
	end
}
