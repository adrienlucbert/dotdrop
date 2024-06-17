local M = {}

M.adapters = {
	{ name = 'lldb', config = require('./lldb.adapter') },
}

M.configurations = {
	{ name = 'cpp', config = require('./cpp.config') },
	{ name = 'c', config = require('./cpp.config') },
	{ name = 'python', config = require('./python.config') },
}

M.load_adapters = function()
	-- for _, adapter in ipairs(M.adapters) do
	-- 	require('dap').adapters[adapter.name] = adapter.config()
	-- end
end

M.load_configurations = function()
	-- for _, config in ipairs(M.configurations) do
	-- 	table.insert(require('dap').adapters[config.name], require('./' .. config.source)())
	-- end
end

return M