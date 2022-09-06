return function()
  local map = require("utils").map

  map('n', '<C-b>', ':NvimTreeToggle<CR>')

  require 'nvim-tree'.setup {
    renderer = {
      highlight_opened_files = "name",
      indent_markers = {
        enable = true
      }
    },
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
        'build',
        '*.meta'
      }
    },
    diagnostics = {
      enable = false
    }
  }
end
