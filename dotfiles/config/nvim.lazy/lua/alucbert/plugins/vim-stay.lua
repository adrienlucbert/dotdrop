return {
	"vim-scripts/vim-stay",  -- Open a previously closed file where you left it
	config = function ()
		-- When using vim-stay, dont save the cwd and options/mappings to the
		-- buffer.
		vim.cmd('set viewoptions-=options')
		vim.cmd('set viewoptions-=curdir')
	end
}
