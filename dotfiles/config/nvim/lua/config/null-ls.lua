return function()
	local null_ls = require "null-ls"

	-- python builtins with custom cli args

	null_ls.setup({
		sources = {
			-- formatting
			null_ls.builtins.formatting.stylua,
			null_ls.builtins.formatting.black.with({
				extra_args = { "--line-length", "150" },
			}),
			-- diagnostics
			null_ls.builtins.diagnostics.shellcheck,
			null_ls.builtins.diagnostics.mypy,
			null_ls.builtins.diagnostics.ruff.with({
				extra_args = {
					"--line-length",
					"150",
					"--extend-select",
					"A,B,BLE,C,N,RUF,U,YTT",
					"--extend-ignore",
					"C90,B008,U007",
				},
			}),
		},
	})
end
