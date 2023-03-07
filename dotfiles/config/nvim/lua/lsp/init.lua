return function()
	local lsp = require('lspconfig')

	local utils = require('utils')

	local capabilities = vim.lsp.protocol.make_client_capabilities()
	capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

	capabilities.textDocument.completion.completionItem.snippetSupport = true
	capabilities.textDocument.foldingRange = {
		dynamicRegistration = false,
		lineFoldingOnly = true,
	}

	vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
		underline = true,
		update_in_insert = false,
		virtual_text = {
			prefix = ''
		},
	})

	vim.fn.sign_define('LspDiagnosticsSignError', { text = ' ', texthl = 'LspDiagnosticsSignError' })
	vim.fn.sign_define('LspDiagnosticsSignWarning', { text = ' ', texthl = 'LspDiagnosticsSignWarning' })
	vim.fn.sign_define('LspDiagnosticsSignInformation', { text = ' ', texthl = 'LspDiagnosticsSignInformation' })
	vim.fn.sign_define('LspDiagnosticsSignHint', { text = ' ', texthl = 'LspDiagnosticsSignHint' })

	local make_on_attach = function(ls_on_attach, options)
		return function(client, bufnr)
			local function buf_set_keymap(...) utils.buf_map(bufnr, ...) end

			buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
			buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>')
			buf_set_keymap('n', '<leader>ys', '<cmd>lua vim.lsp.buf.signature_help()<CR>')
			buf_set_keymap('n', '<leader>t', '<cmd>lua vim.lsp.buf.type_definition()<CR>')
			buf_set_keymap('n', '<leader>r', '<cmd>lua vim.lsp.buf.references()<CR>')
			buf_set_keymap('n', '<leader>yd', '<cmd>lua vim.lsp.buf.document_symbol()<CR>')
			buf_set_keymap('n', '<leader>yw', '<cmd>lua vim.lsp.buf.workspace_symbol()<CR>')
			buf_set_keymap('n', '<C-c>', '<cmd>CodeActionMenu<CR>')
			buf_set_keymap('n', 'L', '<cmd>lua vim.diagnostic.open_float()<CR>')
			buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.rename()<CR>')

			local formatting = options == nil or options.disable_formatting ~= true
			if formatting and client.server_capabilities.documentFormattingProvider then
				vim.cmd 'autocmd BufWritePre <buffer> lua vim.lsp.buf.format { async = false }'
			end
			buf_set_keymap('n', '<C-S-i>', '<cmd>lua vim.lsp.buf.format { async = true }<CR>')

			if ls_on_attach ~= nil then
				ls_on_attach(client, bufnr)
			end
		end
	end

	local servers = {
		require('lsp.eslint'),
		require('lsp.lua_ls'),
		require('lsp.diagnosticls'),
		require('lsp.nvim-lsp-ts-utils'),
		require('lsp.texlab'),
		require('lsp.omnisharp'),
		require('lsp.elixirls'),
		require('lsp.java'),
		require('lsp.rust'),
		{ name = 'pyright' },
		{ name = 'clangd' },
		{ name = 'cmake' },
		{ name = 'bashls' },
		{ name = 'jsonls' },
		{ name = 'gopls' },
		{ name = 'golangci_lint_ls' },
	}

	vim.lsp.protocol.CompletionItemKind = {
		"   (Text) ",
		"   (Method)",
		"   (Function)",
		"   (Constructor)",
		" ﴲ  (Field)",
		"   (Variable)",
		"   (Class)",
		" ﰮ  (Interface)",
		"   (Module)",
		" 襁 (Property)",
		"   (Unit)",
		"   (Value)",
		" 練 (Enum)",
		"   (Keyword)",
		"   (Snippet)",
		"   (Color)",
		"   (File)",
		"   (Reference)",
		"   (Folder)",
		"   (EnumMember)",
		" ﲀ  (Constant)",
		" ﳤ  (Struct)",
		"   (Event)",
		"   (Operator)",
		"   (TypeParameter)"
	}

	for _, server in ipairs(servers) do
		lsp[server.name].setup {
			on_attach = make_on_attach(server.on_attach, server.on_attach_options),
			cmd = server.cmd,
			settings = server.settings,
			init_options = server.init_options,
			filetypes = server.filetypes,
			capabilities = capabilities
		}
	end
end
