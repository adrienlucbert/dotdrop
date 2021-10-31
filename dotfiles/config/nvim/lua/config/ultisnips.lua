return function ()
  vim.cmd('autocmd BufEnter * if &filetype == "" | setlocal ft=text | endif')
  vim.cmd('let g:UltiSnipsSnippetDirectories = [$HOME."/.config/nvim/ultisnips/"]')
  vim.cmd('let g:UltiSnipsExpandTrigger="<c-s>"')
  vim.cmd('let g:UltiSnipsListSnippets="<nop>"')
  vim.cmd('let g:UltiSnipsJumpForwardTrigger="<tab>"')
  vim.cmd('let g:UltiSnipsJumpBackwardTrigger="<s-tab>"')
end
