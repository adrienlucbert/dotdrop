-- This dotfile is managed using dotdrop

return function ()
  -- When using vim-stay, dont save the cwd and options/mappings to the
  -- buffer.
  vim.cmd('set viewoptions-=options')
  vim.cmd('set viewoptions-=curdir')
end
