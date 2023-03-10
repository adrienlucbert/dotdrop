-- This dotfile is managed using dotdrop

return function()
	require('nvim-rooter').setup {
		rooter_patterns = { '.git', 'go.mod' },
		trigger_patterns = { '*' },
		manual = false,
	}
end
