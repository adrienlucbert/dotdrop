return function ()
  vim.g.mkdp_auto_start = false
  vim.g.mkdp_auto_close = true
  vim.g.mkdp_refresh_slow = false
  vim.g.mkdp_command_for_global = false
  vim.g.mkdp_open_to_the_world = false
  -- vim.g.mkdp_browser = 'brave' -- comment to use system default
  vim.g.mkdp_echo_preview_url = false
  vim.g.mkdp_page_title = '${name}'
end
