return function()
	local lga_actions = require("telescope-live-grep-args.actions")

	return {
		auto_quoting = true,
		mappings = {
			i = {
				["<C-k>"] = lga_actions.quote_prompt(),
				["<C-i>"] = lga_actions.quote_prompt({ postfix = " --iglob " }),
			},
		}
	}
end
