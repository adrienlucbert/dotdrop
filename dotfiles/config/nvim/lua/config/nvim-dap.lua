return function()
  local map = require("utils").map
  local dap = require('dap')

  -- mappings
  map('n', '<F5>', ':lua require"dap".continue()<CR>')
  map('n', '<leader>l', ':lua require"dap".step_over()<CR>')
  map('n', '<leader>j', ':lua require"dap".step_into()<CR>')
  map('n', '<leader>k', ':lua require"dap".step_out()<CR>')
  map('n', '<leader>b', ':lua require"dap".toggle_breakpoint()<CR>')
  map('n', '<leader>B', ':lua require"dap".set_breakpoint(vim.fn.input("Breakpoint condition: "))<CR>')
  map('n', '<leader>lp', ':lua require"dap".set_breakpoint(nil, nil, vim.fn.input("Log point message: "))<CR>')
  map('n', '<leader>do', ':lua require"dap".repl.open()<CR>')
  map('n', '<leader>dc', ':lua require"dap".repl.close()<CR>')
  map('n', '<leader>dl', ':lua require"dap".run_last()<CR>')

  -- adapters
  dap.adapters.lldb = {
    type = 'executable',
    command = '/usr/bin/lldb-vscode',
    name = 'lldb'
  }

  -- adapters configurations
  dap.configurations.cpp = {
    {
      name = "Launch",
      type = "lldb",
      request = "launch",
      program = function()
        return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
      end,
      cwd = '${workspaceFolder}',
      environment = {},
      stopOnEntry = false,
      args = {},
      runInTerminal = false
    }
  }
  dap.configurations.c = dap.configurations.cpp
  local root = vim.fn.finddir('.git/..', ';')
  require('dap.ext.vscode').load_launchjs(root .. '/.vim/launch.json') -- parse .vim/launch.json if exists
  require('dap.ext.vscode').load_launchjs(root .. '/.vscode/launch.json') -- parse .vim/launch.json if exists
end
