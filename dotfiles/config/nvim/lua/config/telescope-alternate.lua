local exclude_test_file = function()
  return not string.match(vim.api.nvim_buf_get_name(0), ".*_test.go")
end

return function()
	return {
		mappings = {
			-- [[ C mappings ]]
			-- ----------------
			-- alternate from C source to header
			-- { '**/([^/]*).c', {
			-- 	{ '**/[1].h', 'C (.h) header', true },
			-- } },
			-- -- alternate from C header to source
			-- { '**/([^/]*).h', {
			-- 	{ '**/[1].cpp', 'C++ (.cpp) source', true },
			-- 	{ '**/[1].c', 'C (.c) source', true },
			-- } },

			-- [[ C++ mappings ]]
			-- ------------------
			-- alternate from C++ source to header
			{ '**/([^/]*).cpp', {
				{ '**/[1].hpp', 'C++ (.hpp) header', true },
				{ '**/[1].hh', 'C++ (.hh) header', true },
				{ '**/[1].h', 'C (.h) header', true },
			} },
			-- alternate from C++ header to source
			{ '**/([^/]*).hpp', {
				{ '**/[1].cpp', 'C++ (.cpp) source', true },
				{ '**/[1].c', 'C (.c) source', true },
			} },
			{ '**/([^/]*).hh', {
				{ '**/[1].cpp', 'C++ (.cpp) source', true },
				{ '**/[1].c', 'C (.c) source', true },
			} },

			-- [ GO mappings ]
			-- ---------------
			{ "(.*).go", {
				{ "[1]_test.go", "Test", exclude_test_file }
			} },
			{ "(.*)_test.go", {
				{ "[1].go", "Source", true }
			} },

		-- 	-- [ Sveltekit mapping ]
		-- 	-- ---------------
		-- 	-- +page
		-- 	{ "+page.svelte", {
		-- 		{ "+page.ts", "Client-side data load", true },
		-- 		{ "+page.server.ts", "Server-side data load", true },
		-- 		{ "+server.ts", "API", true },
		-- 	} },
		-- 	{ "+page.ts", {
		-- 		{ "+page.svelte", "View", true },
		-- 		{ "+page.server.ts", "Server-side data load", true },
		-- 		{ "+server.ts", "API", true },
		-- 	} },
		-- 	{ "+page.server.ts", {
		-- 		{ "+page.ts", "Client-side data load", true },
		-- 		{ "+page.svelte", "View", true },
		-- 		{ "+server.ts", "API", true },
		-- 	} },
		-- 	-- +layout
		-- 	{ "+layout.svelte", {
		-- 		{ "+layout.ts", "Client-side data load", true },
		-- 		{ "+layout.server.ts", "Server-side data load", true },
		-- 	} },
		-- 	{ "+layout.ts", {
		-- 		{ "+layout.svelte", "Layout view", true },
		-- 		{ "+layout.server.ts", "Server-side data load", true },
		-- 	} },
		-- 	{ "+layout.server.ts", {
		-- 		{ "+layout.ts", "Client-side data load", true },
		-- 		{ "+layout.svelte", "Layout view", true },
		-- 	} },
		}
	}
end