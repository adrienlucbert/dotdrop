return function ()
	local gc = require('git-conflict')
	gc.setup({
		default_mappings = {
			ours = 'o',
			theirs = 't',
			none = '0',
			both = 'b',
			next = 'n',
			prev = 'p',
		},
	})
end