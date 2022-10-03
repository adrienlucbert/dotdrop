return {
  name = 'html',
  cmd = { '/usr/bin/vscode-html-languageserver', '--stdio' },
  filetypes = { 'html' },
  init_options = {
    embeddedLanguages = {
      css = true,
      javascript = true
    },
    configurationSection = { 'html', 'css', 'javascript' }
  }
}
