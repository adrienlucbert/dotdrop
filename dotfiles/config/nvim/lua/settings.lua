-- auto source and compile when saving changes to nvim config
vim.cmd("augroup nvimconfig")
vim.cmd("  autocmd!")
vim.cmd("  autocmd BufWritePost ~/.config/nvim/** :so $MYVIMRC")
vim.cmd("  autocmd BufWritePost ~/.config/nvim/** :PackerCompile")
vim.cmd("augroup END")

-- reload buffer if it was modified outside of nvim
vim.cmd("augroup autoreload")
vim.cmd("  autocmd!")
vim.cmd("  autocmd FocusGained * checktime")
vim.cmd("  autocmd CursorHold * checktime")
vim.cmd("augroup END")

-- populate loclist with lsp diagnostics
vim.cmd("augroup diagllist")
vim.cmd("  autocmd!")
vim.cmd("  autocmd DiagnosticChanged * lua vim.diagnostic.setloclist({open = false})")
vim.cmd("augroup END")

require("auto-rooter").setup({
	rooter_patterns = { ".git", "Makefile", "go.mod" },
})

require("autorun").setup()
