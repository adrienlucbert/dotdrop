return function()
	local map = require("utils").map
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
				".git",
				"node_modules",
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
			fzf_writer = require("config.telescope-fzf-writer")(),
			["telescope-alternate"] = require("config.telescope-alternate")(),
			live_grep_args = require("config.telescope-live-grep-args")(),
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
