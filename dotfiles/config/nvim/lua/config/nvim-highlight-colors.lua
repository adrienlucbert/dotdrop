return function ()
	local highlight = require('nvim-highlight-colors')

	highlight.setup {
		render = 'background', -- 'background' | 'foreground' | 'first_column'
		enable_named_colors = true,
		enable_tailwind = true,
	}

	highlight.turnOn()
end