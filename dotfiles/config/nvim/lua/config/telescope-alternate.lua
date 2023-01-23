return function()
	return {
		mappings = {
			-- [[ C mappings ]]
			-- ----------------
			-- alternate from C source to header
			{ '**/([^/]*).c', {
				{ '**/[1].h', 'C (.h) header', true },
			} },
			-- alternate from C header to source
			{ '**/([^/]*).h', {
				{ '**/[1].cpp', 'C++ (.cpp) source', true },
				{ '**/[1].c', 'C (.c) source', true },
			} },

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
			{ '(.+).go', { -- FIX: this pattern matches "(.*)_test.go" files too
				{ '[1]_test.go', 'Test file', false },
			} },
			{ '(.*)_test.go', {
				{ '[1].go', 'Source file', false },
			} },
		}
	}
end
