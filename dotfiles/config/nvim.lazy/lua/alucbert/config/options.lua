local opt = vim.opt

opt.termguicolors = true
opt.hidden = true
opt.number = true
opt.relativenumber = false
opt.wrap = false
opt.scrolloff = 999
opt.sidescrolloff = 8
opt.colorcolumn = '80'
opt.completeopt = { 'menuone', 'noinsert', 'noselect', 'preview' }
opt.splitright = true
opt.splitbelow = true
opt.signcolumn = 'yes'
opt.cursorline = true
-- opt.cmdheight = 0
opt.mouse = 'c' -- disable mouse
-- highlight Pmenu ctermbg=none guibg=none
-- highlight PmenuSel ctermbg=darkgray guibg=darkgray
-- highlight PmenuSbar ctermbg=gray guibg=gray
-- highlight PmenuThumb ctermbg=darkgray guibg=darkgray

-- Edition --------------------------------------------------------------------

opt.clipboard = 'unnamedplus'
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true
opt.errorbells = false
opt.fixeol = false
opt.eol = false
opt.binary = true

-- Search ---------------------------------------------------------------------

opt.inccommand = 'split'
opt.smartcase = true
opt.wildignorecase = true
opt.wildignore:append({ '*.o', '*.gcno', '*.gcda', 'node_modules', '.git' })
opt.ignorecase = true
opt.autochdir = false

-- Backup ---------------------------------------------------------------------

opt.backup = true
opt.undofile = true
opt.swapfile = false
opt.undodir = vim.fn.expand('~/.nvim/tmp/undo/')
opt.backupdir = vim.fn.expand('~/.nvim/tmp/backup/')
opt.directory = vim.fn.expand('~/.nvim/tmp/swap/')
