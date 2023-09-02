return function()
	require('scrap').setup({
		default_expansion_options = {
			capitalized = false,
			all_caps = false
		},
		transformers = {}
	})
end