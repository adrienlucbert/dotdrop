return {
	'nvim-telescope/telescope.nvim',
	dependencies = {
		{ 'nvim-lua/plenary.nvim' },
		{ "nvim-lua/popup.nvim" },
		{ "nvim-telescope/telescope-fzf-writer.nvim" },
		{ "nvim-telescope/telescope-live-grep-args.nvim" },
		{ "otavioschwanck/telescope-alternate.nvim" },
	},
	config = function()
		local map = require("alucbert.utils").map
		local telescope = require("telescope")

		telescope.setup({
			defaults = {
				vimgrep_arguments = {
					"rg",
					"--color=never",
					"--no-heading",
					"--with-filename",
					"--line-number",
					"--column",
					"--smart-case",
				},
				file_ignore_patterns = {
					"deps/.*",
					".git/",
					"node_modules/",
				},
				-- preview = {
				-- 	mime_hook = function(filepath, bufnr, opts)
				-- 		local is_image = function(file)
				-- 			local image_extensions = { "png", "jpg", "jpeg", "gif" }
				-- 			local split_path = vim.split(file:lower(), ".", { plain = true })
				-- 			local extension = split_path[#split_path]
				-- 			return vim.tbl_contains(image_extensions, extension)
				-- 		end
				-- 		if is_image(filepath) then
				-- 			-- local image = require("hologram.image"):new(filepath, { transmission_type = "f" })
				-- 			-- local term = vim.api.nvim_open_term(bufnr, {})
				-- 			-- image:display(1, 0, term, {})
				-- 			--
				-- 			-- vim.defer_fn(function()
				-- 			-- 	image:delete(0, { free = true })
				-- 			-- end, 5000)
				-- 			-- 	-- local function send_output(_, data, _)
				-- 			-- 	-- 	for _, d in ipairs(data) do
				-- 			-- 	-- 		vim.api.nvim_chan_send(term, d .. "\r\n")
				-- 			-- 	-- 	end
				-- 			-- 	-- end
				-- 			-- 	-- vim.fn.jobstart({
				-- 			-- 	-- 	"viu",
				-- 			-- 	-- 	"-w",
				-- 			-- 	-- 	"100",
				-- 			-- 	-- 	"-b",
				-- 			-- 	-- 	filepath,
				-- 			-- 	-- }, {
				-- 			-- 	-- 	on_stdout = send_output,
				-- 			-- 	-- 	stdout_buffered = true,
				-- 			-- 	-- })
				-- 			-- require("telescope.previewers.utils").set_preview_message(bufnr, opts.winid, tostring(bufnr))
				-- 		-- else
				-- 			require("telescope.previewers.utils").set_preview_message(
				-- 				bufnr,
				-- 				opts.winid,
				-- 				"Binary cannot be previewed"
				-- 			)
				-- 		end
				-- 	end,
				-- },
			},
			extensions = {
				fzf_writer = (function()
					return {
						minimum_grep_characters = 0,
						minimum_files_characters = 0,
						use_highlighter = true,
					}
				end)(),
				["telescope-alternate"] = (function()
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
			end)(),
			live_grep_args = (function()
				local lga_actions = require("telescope-live-grep-args.actions")

				return {
					auto_quoting = true,
					mappings = {
						i = {
							["<C-k>"] = lga_actions.quote_prompt(),
							["<C-i>"] = lga_actions.quote_prompt({ postfix = " --iglob **" }),
							["<C-e>"] = lga_actions.quote_prompt({ postfix = " --iglob !**" }),
						},
					}
				}
			end)(),
		},
		mappings = {},
	})

	telescope.load_extension("fzf_writer")
	telescope.load_extension("telescope-alternate")
	telescope.load_extension("live_grep_args")

	map("n", "<C-p>", ":lua require'telescope.builtin'.find_files()<CR>")
	map("n", "<C-j>", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")
	map("n", "ga", ":Telescope telescope-alternate alternate_file<CR>")
end
}