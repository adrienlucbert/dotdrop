return function()
	-- https://github.com/nathom/filetype.nvim#customization
	require("filetype").setup({
		overrides = {
			extensions = { j2 = "jinja" },
			complex = { ["justfile"] = "just" },
		},
	})
end
