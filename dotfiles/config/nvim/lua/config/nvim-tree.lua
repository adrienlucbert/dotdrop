return function()
  local map = require("utils").map

  map('n', '<C-b>', ':NvimTreeToggle<CR>')

  vim.g.nvim_tree_highlight_opened_files = 3
  vim.g.nvim_tree_indent_markers = 1

  require'nvim-tree'.setup {
    open_on_tab = true,
    update_focused_file = {
      enable = true
    },
    filters = {
      dotfiles = true,
      custom = {
        '.git',
        '*.o',
        'node_modules',
        '.cache',
        'build'
      }
    },
    diagnostics = {
      enable = false
    }
  }
end
