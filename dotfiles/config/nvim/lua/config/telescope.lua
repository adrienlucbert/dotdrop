return function()
	local map = require('utils').map
	local telescope = require('telescope')

	telescope.setup {
		defaults = {
			vimgrep_arguments = {
				'rg',
				'--color=never',
				'--no-heading',
				'--with-filename',
				'--line-number',
				'--column',
				'--smart-case'
			},
			file_ignore_patterns = {
				'deps/.*',
				'.git',
				'node_modules'
			},
		},
		extensions = {
			fzf_writer = {
				minimum_grep_characters = 0,
				minimum_files_characters = 0,
				use_highlighter = true,
			},
			['telescope-alternate'] = require('config.telescope-alternate')(),
			live_grep_args = require('config.telescope-live-grep-args')(),
		},
		mappings = {
		},
	}

	telescope.load_extension('fzf_writer')
	telescope.load_extension('telescope-alternate')
	telescope.load_extension('live_grep_args')

	map('n', '<C-p>', ':lua require\'telescope.builtin\'.find_files()<CR>')
	map('n', '<C-j>', ':lua require(\'telescope.builtin\').live_grep()<CR>')
	map('n', 'ga', ':Telescope telescope-alternate alternate_file<CR>')
end



