return function()
	return {
		{
			name = 'Launch',
			type = 'python',
			request = 'launch',
			program = '${file}',
			-- ... more options, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings
		}
	}
end