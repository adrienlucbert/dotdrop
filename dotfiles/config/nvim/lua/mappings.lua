local map = require("utils").map

vim.g.mapleader = ','

-- Stop pressing shift
map('n', ';', ':')
map('v', ';', ':')

-- Disable search highlight
map('n', '//', ':nohlsearch<CR>')

-- Switch buffer
map('n', '<leader>n', ':bnext<CR>')
map('n', '<leader>p', ':bprevious<CR>')

-- Tabs
map('n', 'T', ':tabnew<cr>')
map('n', 'H', ':tabprev<cr>')
map('n', 'L', ':tabnext<cr>')

-- In visual block mode, enter insert mode with i instead of I
map('x', 'i', 'I')

-- Unbind annoying Ex mode
map('n', 'Q', '<Nop>')

-- Moving lines
map('v', 'J', ":m '>+1<CR>gv=gv")
map('v', 'K', ":m '<-2<CR>gv=gv")

-- Folds
map('n', '<Space>', 'za')
map('n', '<S-Space>', 'zA')
