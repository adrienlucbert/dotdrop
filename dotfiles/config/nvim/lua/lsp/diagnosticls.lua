return {
  name = "diagnosticls",
  cmd = { "diagnostic-languageserver", "--stdio" },
  filetypes = {
    "typescript",
  },
  init_options = {
    filetypes = {
      typescript = "eslint"
    },
    linters = {
      eslint = {
        sourceName = "eslint",
        command = "eslint_d",
        rootPatterns = { ".eslintrc.js", "package.json" },
        debounce = 100,
        args = { "--stdin", "--stdin-filename", "%filepath", "--format", "json" },
        parseJson = {
          errorsRoot = "[0].messages",
          line = "line",
          column = "column",
          endLine = "endLine",
          endColumn = "endColumn",
          message = "${message} [${ruleId}]",
          security = "severity"
        },
        securities = { [2] = "error", [1] = "warning" }
      }
    },
    formatters = {
      prettier = {
        command = "prettier", args = { "--stdin-filepath", "%filepath" }
      }
    },
    formatFiletypes = {
      typescript = "prettier"
    }
  },
  on_attach_options = {
    disable_formatting = true
  }
}
