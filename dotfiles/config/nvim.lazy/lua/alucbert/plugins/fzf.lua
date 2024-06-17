return {
	'junegunn/fzf.vim',
	dependencies = { 'junegunn/fzf' },
	config = (function ()
		local map = require('alucbert.utils').map

		map('n', '?', ':BLines<CR>')
		-- map('n', '<c-p>', ':call fzf#vim#files("", fzf#vim#with_preview("right"))<CR>')
		-- Much like :Ag, but ignoring the `deps` and `.git` folders
		-- map('n', '<c-j>', ':call fzf#vim#grep(\'ag --ignore deps --ignore node_modules --ignore .git --color -- "^(?=.)"\', 0, fzf#vim#with_preview())<CR>')
	end)(),
}
