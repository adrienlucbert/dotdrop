return {
  name = 'elixirls',
  cmd = { '/usr/bin/elixir-ls' },
  filetypes = { 'elixir', 'eelixir', 'heex' },
  on_attach_options = {
    disable_formatting = true
  }
}
