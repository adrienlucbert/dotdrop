return function()
	return {
		{
			name = "Launch",
			type = "lldb",
			request = "launch",
			program = function()
				return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
			end,
			cwd = '${workspaceFolder}',
			environment = {},
			stopOnEntry = false,
			args = {},
			runInTerminal = false
		}
	}
end