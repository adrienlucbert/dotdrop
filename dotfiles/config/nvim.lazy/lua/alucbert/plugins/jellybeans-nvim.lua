return {
	'metalelf0/jellybeans-nvim',
	dependencies = {
		{ 'rktjmp/lush.nvim' },
	},
	priority = 1000,
	config = function()
		vim.o.termguicolors = true
		vim.cmd.colorscheme 'jellybeans-nvim'
	end,
}
