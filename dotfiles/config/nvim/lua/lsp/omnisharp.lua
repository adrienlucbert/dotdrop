local pid = vim.fn.getpid()
local omnisharp_bin = "/home/alucbert/.local/share/omnisharp/run"

return {
  name = 'omnisharp',
  cmd = { omnisharp_bin, "--languageserver", "--hostPID", tostring(pid) };
}
