return {
	'linrongbin16/gitlinker.nvim',
	config = function()
		require('gitlinker').setup({
			-- print message in command line
			message = true,

			-- highlights the linked line(s) by the time in ms
			-- disable highlight by setting a value equal or less than 0
			highlight_duration = 500,

			-- user command
			command = {
				-- to copy link to clipboard, use: 'GitLink'
				-- to open link in browser, use bang: 'GitLink!'
				-- to use blame router, use: 'GitLink blame' and 'GitLink! blame'
				name = "GitLink",
				desc = "Generate git permanent link",
			},

			-- router bindings
			router = {
				browse = {
					-- example: https://github.com/linrongbin16/gitlinker.nvim/blob/9679445c7a24783d27063cd65f525f02def5f128/lua/gitlinker.lua#L3-L4
					["^github%.com"] = "https://github.com/"
					.. "{_A.ORG}/"
					.. "{_A.REPO}/blob/"
					.. "{_A.REV}/"
					.. "{_A.FILE}?plain=1" -- '?plain=1'
					.. "#L{_A.LSTART}"
					.. "{(_A.LEND > _A.LSTART and ('-L' .. _A.LEND) or '')}",
					-- example: https://gitlab.com/linrongbin16/gitlinker.nvim/blob/9679445c7a24783d27063cd65f525f02def5f128/lua/gitlinker.lua#L3-L4
					["^gitlab%.com"] = "https://gitlab.com/"
					.. "{_A.ORG}/"
					.. "{_A.REPO}/blob/"
					.. "{_A.REV}/"
					.. "{_A.FILE}"
					.. "#L{_A.LSTART}"
					.. "{(_A.LEND > _A.LSTART and ('-L' .. _A.LEND) or '')}",
					-- example: https://bitbucket.org/linrongbin16/gitlinker.nvim/src/9679445c7a24783d27063cd65f525f02def5f128/lua/gitlinker.lua#L3-L4
					["^bitbucket%.org"] = "https://bitbucket.org/"
					.. "{_A.ORG}/"
					.. "{_A.REPO}/src/"
					.. "{_A.REV}/"
					.. "{_A.FILE}"
					.. "#lines-{_A.LSTART}"
					.. "{(_A.LEND > _A.LSTART and (':' .. _A.LEND) or '')}",
					-- example: https://codeberg.org/linrongbin16/gitlinker.nvim/src/commit/a570f22ff833447ee0c58268b3bae4f7197a8ad8/LICENSE#L5-L6
					["^codeberg%.org"] = "https://codeberg.org/"
					.. "{_A.ORG}/"
					.. "{_A.REPO}/src/commit/"
					.. "{_A.REV}/"
					.. "{_A.FILE}?display=source" -- '?display=source'
					.. "#L{_A.LSTART}"
					.. "{(_A.LEND > _A.LSTART and ('-L' .. _A.LEND) or '')}",
					-- example:
					-- main repo: https://git.samba.org/?p=samba.git;a=blob;f=wscript;hb=83e8971c0f1c1db8c3574f83107190ac1ac23db0#l6
					-- dev repo: https://git.samba.org/?p=bbaumbach/samba.git;a=blob;f=wscript;hb=8de348e9d025d336a7985a9025fe08b7096c0394#l7
					["^git%.samba%.org"] = "https://git.samba.org/?p="
					.. "{string.len(_A.ORG) > 0 and (_A.ORG .. '/') or ''}" -- 'p=samba.git;' or 'p=bbaumbach/samba.git;'
					.. "{_A.REPO .. '.git'};a=blob;"
					.. "f={_A.FILE};"
					.. "hb={_A.REV}"
					.. "#l{_A.LSTART}",
				},
				blame = {
					-- example: https://github.com/linrongbin16/gitlinker.nvim/blame/9679445c7a24783d27063cd65f525f02def5f128/lua/gitlinker.lua#L3-L4
					["^github%.com"] = "https://github.com/"
					.. "{_A.ORG}/"
					.. "{_A.REPO}/blame/"
					.. "{_A.REV}/"
					.. "{_A.FILE}?plain=1" -- '?plain=1'
					.. "#L{_A.LSTART}"
					.. "{(_A.LEND > _A.LSTART and ('-L' .. _A.LEND) or '')}",
					-- example: https://gitlab.com/linrongbin16/gitlinker.nvim/blame/9679445c7a24783d27063cd65f525f02def5f128/lua/gitlinker.lua#L3-L4
					["^gitlab%.com"] = "https://gitlab.com/"
					.. "{_A.ORG}/"
					.. "{_A.REPO}/blame/"
					.. "{_A.REV}/"
					.. "{_A.FILE}"
					.. "#L{_A.LSTART}"
					.. "{(_A.LEND > _A.LSTART and ('-L' .. _A.LEND) or '')}",
					-- example: https://bitbucket.org/linrongbin16/gitlinker.nvim/annotate/9679445c7a24783d27063cd65f525f02def5f128/lua/gitlinker.lua#lines-3:4
					["^bitbucket%.org"] = "https://bitbucket.org/"
					.. "{_A.ORG}/"
					.. "{_A.REPO}/annotate/"
					.. "{_A.REV}/"
					.. "{_A.FILE}"
					.. "#lines-{_A.LSTART}"
					.. "{(_A.LEND > _A.LSTART and (':' .. _A.LEND) or '')}",
					-- example: https://codeberg.org/linrongbin16/gitlinker.nvim/blame/commit/a570f22ff833447ee0c58268b3bae4f7197a8ad8/LICENSE#L5-L6
					["^codeberg%.org"] = "https://codeberg.org/"
					.. "{_A.ORG}/"
					.. "{_A.REPO}/blame/commit/"
					.. "{_A.REV}/"
					.. "{_A.FILE}?display=source" -- '?display=source'
					.. "#L{_A.LSTART}"
					.. "{(_A.LEND > _A.LSTART and ('-L' .. _A.LEND) or '')}",
				},
			},

			-- enable debug
			debug = false,

			-- write logs to console(command line)
			console_log = true,

			-- write logs to file
			file_log = false,
		})
	end,
}