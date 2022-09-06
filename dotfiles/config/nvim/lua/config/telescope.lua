return function ()
  local map = require('utils').map
  local telescope = require('telescope')

  telescope.setup {
    defaults = {
      vimgrep_arguments = {
        'rg',
        '--color=never',
        '--no-heading',
        '--with-filename',
        '--line-number',
        '--column',
        '--smart-case'
      },
      file_ignore_patterns = {
        'deps/.*',
        '.git',
        'node_modules',
        '.cache',
        'build',
        '*.meta'
      },
    },
    extensions = {
      fzf_writer = {
          minimum_grep_characters = 0,
          minimum_files_characters = 0,
          use_highlighter = true,
      },
    },
    mappings = {
    },
  }

  telescope.load_extension('fzf_writer')

  map('n', '<C-p>', ':lua require\'telescope.builtin\'.find_files()<CR>')
  -- map('n', '<C-j>', ':lua require(\'telescope.builtin\').live_grep()<CR>')
end
