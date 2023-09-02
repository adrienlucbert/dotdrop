local mergetbl = require("utils").mergetbl
local nt = require("nvim-tree.api")

M = {}

local root_cache = {}

function M.setup(config)
	-- 	config = mergetbl({ rooter_patterns = { '.git' } }, config)
	--
	-- 	vim.api.nvim_create_autocmd('BufEnter', {
	-- 		group = vim.api.nvim_create_augroup('auto-rooter', { clear = true }),
	-- 		callback = function()
	-- 			local bufpath = vim.api.nvim_buf_get_name(0)
	-- 			print(bufpath)
	-- 			-- if bufpath == '' or vim.fn.isdirectory(bufpath) then
	-- 			-- 	nt.tree.open({ current_window = true })
	-- 			-- end
	-- 			-- local path = vim.api.nvim_buf_get_name(0)
	-- 			-- if path == '' then return end
	-- 			-- path = vim.fs.dirname(path)
	-- 			--
	-- 			-- local root = root_cache[path]
	-- 			-- if root == nil then
	-- 			-- 	local root_file = vim.fs.find(config.rooter_patterns, { path = path, upward = true })[1]
	-- 			-- 	if root_file == nil then return end
	-- 			-- 	root = vim.fs.dirname(root_file)
	-- 			-- 	root_cache[path] = root
	-- 			-- end
	-- 			--
	-- 			-- vim.fn.chdir(root)
	-- 		end
	-- 	})
end

return M
