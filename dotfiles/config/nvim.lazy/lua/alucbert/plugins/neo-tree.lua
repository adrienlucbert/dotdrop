return {
	'nvim-neo-tree/neo-tree.nvim',
	branch = 'v2.x',
	cmd = 'Neotree',
	dependencies = {
		{ 'nvim-lua/plenary.nvim' },
		{ 'nvim-tree/nvim-web-devicons' },
		{ 'MunifTanjim/nui.nvim' },
		{ 's1n7ax/nvim-window-picker' },
	},
	keys = {
		{ '<C-b>', '<cmd>Neotree toggle<CR>' },
	},
	opts = {
		window = {
			mappings = {
				['<CR>'] = 'open_with_window_picker',
			},
		},
		default_component_configs = {
			indent = {
				with_markers = false,
			},
			name = {
				use_git_status_colors = false,
			}
		},
	},
}
