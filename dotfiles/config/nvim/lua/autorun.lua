local M = {}

function M.setup()
	vim.api.nvim_create_user_command("AutoRun", function(opts)
		pattern = opts.fargs[1]
		command = table.concat({ select(2, unpack(opts.fargs)) }, " ")
		local win = vim.api.nvim_get_current_win()
	end, { nargs = "+" })

	-- vim.api.nvim_create_autocmd("BufWritePost", {
	-- 	group = vim.api.nvim_create_augroup("AutoRun", { clear = true }),
	-- 	pattern = "",
	-- 	callback = function()
	-- 	end,
	-- })
end

return M
