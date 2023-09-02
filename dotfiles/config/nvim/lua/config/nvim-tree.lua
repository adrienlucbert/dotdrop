return function()
	local map = require("utils").map

	map('n', '<C-b>', ':NvimTreeToggle<CR>')

	require 'nvim-tree'.setup {
		open_on_tab = true,
		update_focused_file = {
			enable = true
		},
		renderer = {
			highlight_opened_files = 'all',
			indent_markers = {
				enable = true
			},
		},
		filters = {
			dotfiles = true,
			custom = {
				'.git',
				'*.o',
				'node_modules/',
				'.cache/',
				'build/'
			}
		},
		diagnostics = {
			enable = false
		}
	}
end
