return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
		"mfussenegger/nvim-dap-python",
        'nvim-neotest/nvim-nio',
	},

	-- for python debugger
	--mkdir .virtualenvs
	--cd .virtualenvs
	--python -m venv debugpy
	--debugpy/bin/python -m pip install debugpy

	config = function()
		require("dapui").setup()
		require("dap-python").setup("/usr/bin/python3")

		-- config ui
		local dap, dapui = require("dap"), require("dapui")
		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end
	end,
}
