return function()
    local lsp = require('lspconfig')

    local utils = require('utils')

    local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
    local make_on_attach = function(ls_on_attach)
        return function(client, bufnr)
            local function buf_set_keymap(...) utils.buf_map(bufnr, ...) end

            buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
            buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>')
            buf_set_keymap('n', '<leader>ys', '<cmd>lua vim.lsp.buf.signature_help()<CR>')
            buf_set_keymap('n', '<leader>t', '<cmd>lua vim.lsp.buf.type_definition()<CR>')
            buf_set_keymap('n', '<leader>r', '<cmd>lua vim.lsp.buf.references()<CR>')
            buf_set_keymap('n', '<leader>yd', '<cmd>lua vim.lsp.buf.document_symbol()<CR>')
            buf_set_keymap('n', '<leader>yw', '<cmd>lua vim.lsp.buf.workspace_symbol()<CR>')
            buf_set_keymap('n', '<C-c>', '<cmd>lua vim.lsp.buf.code_action()<CR>')
            buf_set_keymap('n', 'L', '<cmd>lua vim.diagnostic.open_float()<CR>')
            buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.rename()<CR>')

            if client.resolved_capabilities.document_formatting then
                vim.cmd 'autocmd BufWritePre * lua vim.lsp.buf.formatting_sync()'
            end

            if ls_on_attach ~= nil then
                ls_on_attach(client, bufnr)
            end
        end
    end

    local servers = {
    require('lsp.sumneko_lua'),
    -- require('lsp.diagnosticls'),\
    require('lsp.nvim-lsp-ts-utils'),
    require('lsp.texlab'),
    require('lsp.omnisharp'),
    { name = 'pyright' },
    { name = 'clangd' },
    { name = 'cmake' },
    { name = 'bashls' },
    { name = 'jsonls' }
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

    capabilities.textDocument.completion.completionItem.snippetSupport = true

    vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
      underline = true,
      update_in_insert = false,
      virtual_text = {
        prefix = ' '
      },
    }
    )

    vim.lsp.handlers['textDocument/codeAction'] = require 'lsputil.codeAction'.code_action_handler

    vim.fn.sign_define('LspDiagnosticsSignError',
        { text = ' ', texthl = 'LspDiagnosticsSignError' })
    vim.fn.sign_define('LspDiagnosticsSignWarning',
        { text = ' ', texthl = 'LspDiagnosticsSignWarning' })
    vim.fn.sign_define('LspDiagnosticsSignInformation',
        { text = ' ', texthl = 'LspDiagnosticsSignInformation' })
    vim.fn.sign_define('LspDiagnosticsSignHint',
        { text = ' ', texthl = 'LspDiagnosticsSignHint' })


    for _, server in ipairs(servers) do
      lsp[server.name].setup {
        on_attach = make_on_attach(server.on_attach),
        cmd = server.cmd,
        settings = server.settings,
        init_options = server.init_options,
        filetypes = server.filetypes,
        capabilities = capabilities
      }
    end
end
