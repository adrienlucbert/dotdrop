return function()
	require("nvim-treesitter.configs").setup({
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
		-- playground = {
		-- 	enable = true,
		-- 	disable = {},
		-- 	updatetime = 25,      -- Debounced time for highlighting nodes in the playground from source code
		-- 	persist_queries = false, -- Whether the query persists across vim sessions
		-- 	keybindings = {
		-- 		toggle_query_editor = "o",
		-- 		toggle_hl_groups = "i",
		-- 		toggle_injected_languages = "t",
		-- 		toggle_anonymous_nodes = "a",
		-- 		toggle_language_display = "I",
		-- 		focus_language = "f",
		-- 		unfocus_language = "F",
		-- 		update = "R",
		-- 		goto_node = "<cr>",
		-- 		show_help = "?",
		-- 	},
		-- },
	})
end