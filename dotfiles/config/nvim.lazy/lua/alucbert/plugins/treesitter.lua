return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		{ 'JoosepAlviste/nvim-ts-context-commentstring' },
	},
	build = ":TSUpdate",
	config = function () 
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = {
				"bash",
				"c",
				"cpp",
				"css",
				"dockerfile",
				"html",
				"javascript",
				"json",
				"json5",
				"latex",
				"lua",
				"markdown",
				"python",
				"rust",
				"typescript",
				"yaml",
				"elixir",
				"go",
				"svelte",
				-- "just",
				"hcl",
			},
			sync_install = false,
			indent = {
				enable = true,
			},
			highlight = {
				enable = true,
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = 'vb',
					scope_incremental = '<CR>',
					node_incremental = '<TAB>',
					node_decremental = '<S-TAB>',
				},
			},
		})
	end
}
