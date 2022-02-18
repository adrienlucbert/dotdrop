-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/alucbert/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/alucbert/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/alucbert/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/alucbert/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/alucbert/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["bclose.vim"] = {
    loaded = true,
    path = "/home/alucbert/.local/share/nvim/site/pack/packer/start/bclose.vim",
    url = "https://github.com/rbgrouleff/bclose.vim"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/alucbert/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  fzf = {
    loaded = true,
    path = "/home/alucbert/.local/share/nvim/site/pack/packer/start/fzf",
    url = "https://github.com/junegunn/fzf"
  },
  ["fzf.vim"] = {
    config = { "\27LJ\2\nÍ\1\0\0\6\0\b\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0\18\1\0\0'\3\3\0'\4\4\0'\5\5\0B\1\4\1\18\1\0\0'\3\3\0'\4\6\0'\5\a\0B\1\4\1K\0\1\0Ç\1:call fzf#vim#grep('ag --ignore deps --ignore node_modules --ignore .git --color -- \"^(?=.)\"', 0, fzf#vim#with_preview())<CR>\n<c-j>\16:BLines<CR>\6?\6n\bmap\nutils\frequire\0" },
    loaded = true,
    path = "/home/alucbert/.local/share/nvim/site/pack/packer/start/fzf.vim",
    url = "https://github.com/junegunn/fzf.vim"
  },
  ["jellybeans.vim"] = {
    loaded = true,
    path = "/home/alucbert/.local/share/nvim/site/pack/packer/start/jellybeans.vim",
    url = "https://github.com/nanotech/jellybeans.vim"
  },
  ["lsp-trouble.nvim"] = {
    config = { "\27LJ\2\n¢\1\0\0\6\0\t\0\0166\0\0\0'\2\1\0B\0\2\0029\0\2\0006\1\0\0'\3\3\0B\1\2\0029\1\4\0015\3\5\0B\1\2\1\18\1\0\0'\3\6\0'\4\a\0'\5\b\0B\1\4\1K\0\1\0\26:LspTroubleToggle<CR>\14<leader>l\6n\1\0\1\25use_diagnostic_signs\2\nsetup\ftrouble\bmap\nutils\frequire\0" },
    loaded = true,
    path = "/home/alucbert/.local/share/nvim/site/pack/packer/start/lsp-trouble.nvim",
    url = "https://github.com/folke/lsp-trouble.nvim"
  },
  ["markdown-preview.nvim"] = {
    config = { "\27LJ\2\nê\2\0\0\2\0\n\0\0296\0\0\0009\0\1\0+\1\1\0=\1\2\0006\0\0\0009\0\1\0+\1\2\0=\1\3\0006\0\0\0009\0\1\0+\1\1\0=\1\4\0006\0\0\0009\0\1\0+\1\1\0=\1\5\0006\0\0\0009\0\1\0+\1\1\0=\1\6\0006\0\0\0009\0\1\0+\1\1\0=\1\a\0006\0\0\0009\0\1\0'\1\t\0=\1\b\0K\0\1\0\f${name}\20mkdp_page_title\26mkdp_echo_preview_url\27mkdp_open_to_the_world\28mkdp_command_for_global\22mkdp_refresh_slow\20mkdp_auto_close\20mkdp_auto_start\6g\bvim\0" },
    loaded = true,
    path = "/home/alucbert/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/home/alucbert/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n:\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\19UltiSnips#Anon\afn\bvimR\0\1\3\1\2\0\f-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\0¿\21select_next_item\fvisibleR\0\1\3\1\2\0\f-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\0¿\21select_prev_item\fvisible’\4\1\0\t\0&\0B6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0005\4\4\0003\5\3\0=\5\5\4=\4\a\0035\4\n\0009\5\b\0009\5\t\5B\5\1\2=\5\v\0049\5\b\0009\5\f\5B\5\1\2=\5\r\0049\5\b\0009\5\14\5)\a¸ˇB\5\2\2=\5\15\0049\5\b\0009\5\14\5)\a\4\0B\5\2\2=\5\16\0049\5\b\0009\5\17\5B\5\1\2=\5\18\0049\5\b\0009\5\19\5B\5\1\2=\5\20\0049\5\b\0009\5\21\0055\a\24\0009\b\22\0009\b\23\b=\b\25\aB\5\2\2=\5\26\0043\5\27\0=\5\28\0043\5\29\0=\5\30\4=\4\b\0034\4\a\0005\5\31\0>\5\1\0045\5 \0>\5\2\0045\5!\0>\5\3\0045\5\"\0>\5\4\0045\5#\0>\5\5\0045\5$\0>\5\6\4=\4%\3B\1\2\0012\0\0ÄK\0\1\0\fsources\1\0\1\tname\14ultisnips\1\0\1\tname\rnvim_lua\1\0\1\tname\rnvim_lsp\1\0\1\tname\tcalc\1\0\1\tname\vbuffer\1\0\1\tname\tpath\f<S-Tab>\0\n<Tab>\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-f>\n<C-d>\16scroll_docs\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\frequire\0" },
    loaded = true,
    path = "/home/alucbert/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/home/alucbert/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-dap"] = {
    config = { "\27LJ\2\ng\0\0\5\0\a\0\f6\0\0\0009\0\1\0009\0\2\0'\2\3\0006\3\0\0009\3\1\0039\3\4\3B\3\1\2'\4\5\0&\3\4\3'\4\6\0D\0\4\0\tfile\6/\vgetcwd\25Path to executable: \ninput\afn\bvim\t\1\0\a\0-\0b6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\1\0\0'\3\3\0B\1\2\2\18\2\0\0'\4\4\0'\5\5\0'\6\6\0B\2\4\1\18\2\0\0'\4\4\0'\5\a\0'\6\b\0B\2\4\1\18\2\0\0'\4\4\0'\5\t\0'\6\n\0B\2\4\1\18\2\0\0'\4\4\0'\5\v\0'\6\f\0B\2\4\1\18\2\0\0'\4\4\0'\5\r\0'\6\14\0B\2\4\1\18\2\0\0'\4\4\0'\5\15\0'\6\16\0B\2\4\1\18\2\0\0'\4\4\0'\5\17\0'\6\18\0B\2\4\1\18\2\0\0'\4\4\0'\5\19\0'\6\20\0B\2\4\1\18\2\0\0'\4\4\0'\5\21\0'\6\22\0B\2\4\1\18\2\0\0'\4\4\0'\5\23\0'\6\24\0B\2\4\0019\2\25\0015\3\27\0=\3\26\0029\2\28\0014\3\3\0005\4\30\0003\5\31\0=\5 \0044\5\0\0=\5!\0044\5\0\0=\5\"\4>\4\1\3=\3\29\0029\2\28\0019\3\28\0019\3\29\3=\3#\0026\2$\0009\2%\0029\2&\2'\4'\0'\5(\0B\2\3\0026\3\0\0'\5)\0B\3\2\0029\3*\3\18\5\2\0'\6+\0&\5\6\5B\3\2\0016\3\0\0'\5)\0B\3\2\0029\3*\3\18\5\2\0'\6,\0&\5\6\5B\3\2\1K\0\1\0\25/.vscode/launch.json\22/.vim/launch.json\18load_launchjs\19dap.ext.vscode\6;\f.git/..\ffinddir\afn\bvim\6c\targs\16environment\fprogram\0\1\0\6\ttype\tlldb\tname\vLaunch\frequest\vlaunch\18runInTerminal\1\16stopOnEntry\1\bcwd\23${workspaceFolder}\bcpp\19configurations\1\0\3\tname\tlldb\ttype\15executable\fcommand\25/usr/bin/lldb-vscode\tlldb\radapters%:lua require\"dap\".run_last()<CR>\15<leader>dl':lua require\"dap\".repl.close()<CR>\15<leader>dc&:lua require\"dap\".repl.open()<CR>\15<leader>doX:lua require\"dap\".set_breakpoint(nil, nil, vim.fn.input(\"Log point message: \"))<CR>\15<leader>lpQ:lua require\"dap\".set_breakpoint(vim.fn.input(\"Breakpoint condition: \"))<CR>\14<leader>B.:lua require\"dap\".toggle_breakpoint()<CR>\14<leader>b%:lua require\"dap\".step_out()<CR>\14<leader>k&:lua require\"dap\".step_into()<CR>\14<leader>j&:lua require\"dap\".step_over()<CR>\14<leader>l%:lua require\"dap\".continue()<CR>\t<F5>\6n\bdap\bmap\nutils\frequire\0" },
    loaded = true,
    path = "/home/alucbert/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    config = { "\27LJ\2\n\30\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\0¿\topen\31\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\0¿\nclose\31\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\0¿\nclose»\6\1\0\b\0-\0F6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\0035\4\a\0005\5\6\0=\5\b\4=\4\t\0035\4\14\0004\5\5\0005\6\n\0>\6\1\0055\6\v\0>\6\2\0055\6\f\0>\6\3\0055\6\r\0>\6\4\5=\5\15\4=\4\16\0035\4\18\0005\5\17\0=\5\15\4=\4\19\0035\4\20\0005\5\22\0005\6\21\0=\6\23\5=\5\t\4=\4\24\0035\4\25\0=\4\26\3B\1\2\0016\1\0\0'\3\27\0B\1\2\0029\2\28\0019\2\29\0029\2\30\0023\3 \0=\3\31\0029\2\28\0019\2!\0029\2\"\0023\3#\0=\3\31\0029\2\28\0019\2!\0029\2$\0023\3%\0=\3\31\0026\2\0\0'\4&\0B\2\2\0029\2'\2\18\3\2\0'\5(\0'\6)\0'\a*\0B\3\4\1\18\3\2\0'\5+\0'\6)\0'\a,\0B\3\4\0012\0\0ÄK\0\1\0\30:lua require\"dapui\".eval(\6n#:lua require\"dapui\".eval()<CR>\n<M-k>\6v\bmap\nutils\0\17event_exited\0\21event_terminated\vbefore\0\17dapui_config\22event_initialized\nafter\14listeners\bdap\fwindows\1\0\1\vindent\3\1\rfloating\nclose\1\0\0\1\3\0\0\6q\n<Esc>\1\0\1\vborder\vsingle\ttray\1\0\2\rposition\vbottom\tsize\3\n\1\2\0\0\trepl\fsidebar\relements\1\0\2\rposition\tleft\tsize\3(\1\0\2\aid\fwatches\tsize\4\0ÄÄ¿˛\3\1\0\2\aid\vstacks\tsize\4\0ÄÄ¿˛\3\1\0\2\aid\16breakpoints\tsize\4\0ÄÄ¿˛\3\1\0\2\aid\vscopes\tsize\4\0ÄÄ¿˛\3\rmappings\vexpand\1\0\4\vremove\6d\tedit\6e\topen\6o\trepl\6r\1\3\0\0\t<CR>\18<2-LeftMouse>\nicons\1\0\0\1\0\2\rexpanded\b‚ñæ\14collapsed\b‚ñ∏\nsetup\ndapui\frequire\0" },
    loaded = true,
    path = "/home/alucbert/.local/share/nvim/site/pack/packer/start/nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-lsp-ts-utils"] = {
    loaded = true,
    path = "/home/alucbert/.local/share/nvim/site/pack/packer/start/nvim-lsp-ts-utils",
    url = "https://github.com/jose-elias-alvarez/nvim-lsp-ts-utils"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n+\2\0\4\2\1\0\6-\0\0\0009\0\0\0-\2\1\0G\3\0\0A\0\1\1K\0\1\0\0\0\1¿\fbuf_mapÿ\6\1\2\b\2\27\0D3\2\0\0\18\3\2\0'\5\1\0'\6\2\0'\a\3\0B\3\4\1\18\3\2\0'\5\1\0'\6\4\0'\a\5\0B\3\4\1\18\3\2\0'\5\1\0'\6\6\0'\a\a\0B\3\4\1\18\3\2\0'\5\1\0'\6\b\0'\a\t\0B\3\4\1\18\3\2\0'\5\1\0'\6\n\0'\a\v\0B\3\4\1\18\3\2\0'\5\1\0'\6\f\0'\a\r\0B\3\4\1\18\3\2\0'\5\1\0'\6\14\0'\a\15\0B\3\4\1\18\3\2\0'\5\1\0'\6\16\0'\a\17\0B\3\4\1\18\3\2\0'\5\1\0'\6\18\0'\a\19\0B\3\4\1\18\3\2\0'\5\1\0'\6\20\0'\a\21\0B\3\4\0019\3\22\0009\3\23\3\15\0\3\0X\4\4Ä6\3\24\0009\3\25\3'\5\26\0B\3\2\1-\3\1\0\n\3\0\0X\3\4Ä-\3\1\0\18\5\0\0\18\6\1\0B\3\3\0012\0\0ÄK\0\1\0\0\0\0¿<autocmd BufWritePre * lua vim.lsp.buf.formatting_sync()\bcmd\bvim\24document_formatting\26resolved_capabilities&<cmd>lua vim.lsp.buf.rename()<CR>\agr-<cmd>lua vim.diagnostic.open_float()<CR>\6L+<cmd>lua vim.lsp.buf.code_action()<CR>\n<C-c>0<cmd>lua vim.lsp.buf.workspace_symbol()<CR>\15<leader>yw/<cmd>lua vim.lsp.buf.document_symbol()<CR>\15<leader>yd*<cmd>lua vim.lsp.buf.references()<CR>\14<leader>r/<cmd>lua vim.lsp.buf.type_definition()<CR>\14<leader>t.<cmd>lua vim.lsp.buf.signature_help()<CR>\15<leader>ys%<cmd>lua vim.lsp.buf.hover()<CR>\6K*<cmd>lua vim.lsp.buf.definition()<CR>\agd\6n\0\22\1\1\2\1\1\0\0033\1\0\0002\0\0ÄL\1\2\0\1¿\0ë\14\1\0\16\0008\06\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0029\2\4\0026\4\5\0009\4\6\0049\4\a\0049\4\b\4B\4\1\0A\2\0\0023\3\t\0004\4\n\0006\5\0\0'\a\n\0B\5\2\2>\5\1\0046\5\0\0'\a\v\0B\5\2\2>\5\2\0046\5\0\0'\a\f\0B\5\2\2>\5\3\0046\5\0\0'\a\r\0B\5\2\2>\5\4\0045\5\14\0>\5\5\0045\5\15\0>\5\6\0045\5\16\0>\5\a\0045\5\17\0>\5\b\0045\5\18\0>\5\t\0046\5\5\0009\5\6\0059\5\a\0055\6\20\0=\6\19\0059\5\21\0029\5\22\0059\5\23\5+\6\2\0=\6\24\0056\5\5\0009\5\6\0059\5\25\0056\6\5\0009\6\6\0069\6\27\0066\b\5\0009\b\6\b9\b\28\b9\b\29\b5\t\30\0005\n\31\0=\n \tB\6\3\2=\6\26\0056\5\5\0009\5\6\0059\5\25\0056\6\0\0'\b\"\0B\6\2\0029\6#\6=\6!\0056\5\5\0009\5$\0059\5%\5'\a&\0005\b'\0B\5\3\0016\5\5\0009\5$\0059\5%\5'\a(\0005\b)\0B\5\3\0016\5\5\0009\5$\0059\5%\5'\a*\0005\b+\0B\5\3\0016\5\5\0009\5$\0059\5%\5'\a,\0005\b-\0B\5\3\0016\5.\0\18\a\4\0B\5\2\4X\b\18Ä9\n/\t8\n\n\0009\n0\n5\f2\0\18\r\3\0009\0151\tB\r\2\2=\r1\f9\r3\t=\r3\f9\r4\t=\r4\f9\r5\t=\r5\f9\r6\t=\r6\f=\0027\fB\n\2\1E\b\3\3R\bÏ2\0\0ÄK\0\1\0\17capabilities\14filetypes\17init_options\rsettings\bcmd\1\0\0\14on_attach\nsetup\tname\vipairs\1\0\2\vtexthl\27LspDiagnosticsSignHint\ttext\tÔÑ® \27LspDiagnosticsSignHint\1\0\2\vtexthl\"LspDiagnosticsSignInformation\ttext\tÔÑ© \"LspDiagnosticsSignInformation\1\0\2\vtexthl\30LspDiagnosticsSignWarning\ttext\tÔÑ™ \30LspDiagnosticsSignWarning\1\0\2\vtexthl\28LspDiagnosticsSignError\ttext\tÔÄç \28LspDiagnosticsSignError\16sign_define\afn\24code_action_handler\23lsputil.codeAction\28textDocument/codeAction\17virtual_text\1\0\1\vprefix\tÓäÖ \1\0\2\14underline\2\21update_in_insert\1\27on_publish_diagnostics\15diagnostic\twith$textDocument/publishDiagnostics\rhandlers\19snippetSupport\19completionItem\15completion\17textDocument\1\26\0\0\18 Ôíû  (Text) \19 Ôö¶  (Method)\21 Ôûî  (Function)\24 Ôê•  (Constructor)\18 Ô¥≤  (Field)\21 Óúñ  (Variable)\18 Ô†ñ  (Class)\22 Ô∞Æ  (Interface)\19 Ôô®  (Module)\20 Ô™∂ (Property)\17 Ôëµ  (Unit)\18 Ô¢ü  (Value)\16 Ô©ó (Enum)\20 Ô†ä  (Keyword)\20 ÔÉÑ  (Snippet)\18 Ô£ó  (Color)\17 Ôúì  (File)\22 Ôúú  (Reference)\19 Ôùä  (Folder)\23 ÔÖù  (EnumMember)\21 Ô≤Ä  (Constant)\19 Ô≥§  (Struct)\18 ÔÉß  (Event)\21 Ôó´  (Operator)\26 ÔûÉ  (TypeParameter)\23CompletionItemKind\1\0\1\tname\vjsonls\1\0\1\tname\vbashls\1\0\1\tname\ncmake\1\0\1\tname\vclangd\1\0\1\tname\fpyright\18lsp.omnisharp\15lsp.texlab\26lsp.nvim-lsp-ts-utils\20lsp.sumneko_lua\0\29make_client_capabilities\rprotocol\blsp\bvim\24update_capabilities\17cmp_nvim_lsp\nutils\14lspconfig\frequire\0" },
    loaded = true,
    path = "/home/alucbert/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-lsputils"] = {
    loaded = true,
    path = "/home/alucbert/.local/share/nvim/site/pack/packer/start/nvim-lsputils",
    url = "https://github.com/RishabhRD/nvim-lsputils"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\né\3\0\0\6\0\21\0 6\0\0\0'\2\1\0B\0\2\0029\0\2\0\18\1\0\0'\3\3\0'\4\4\0'\5\5\0B\1\4\0016\1\6\0009\1\a\1)\2\3\0=\2\b\0016\1\6\0009\1\a\1)\2\1\0=\2\t\0016\1\0\0'\3\n\0B\1\2\0029\1\v\0015\3\f\0005\4\r\0=\4\14\0035\4\15\0005\5\16\0=\5\17\4=\4\18\0035\4\19\0=\4\20\3B\1\2\1K\0\1\0\16diagnostics\1\0\1\venable\1\ffilters\vcustom\1\6\0\0\t.git\b*.o\17node_modules\v.cache\nbuild\1\0\1\rdotfiles\2\24update_focused_file\1\0\1\venable\2\1\0\1\16open_on_tab\2\nsetup\14nvim-tree\29nvim_tree_indent_markers%nvim_tree_highlight_opened_files\6g\bvim\24:NvimTreeToggle<CR>\n<C-b>\6n\bmap\nutils\frequire\0" },
    loaded = true,
    path = "/home/alucbert/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nå\3\0\0\5\0\v\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0004\4\0\0=\4\a\0035\4\b\0=\4\t\3=\3\n\2B\0\2\1K\0\1\0\15playground\16keybindings\1\0\n\vupdate\6R\14goto_node\t<cr>\21unfocus_language\6F\19focus_language\6f\28toggle_language_display\6I\27toggle_anonymous_nodes\6a\30toggle_injected_languages\6t\21toggle_hl_groups\6i\24toggle_query_editor\6o\14show_help\6?\fdisable\1\0\3\15updatetime\3\25\20persist_queries\1\venable\2\14highlight\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/alucbert/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/alucbert/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/alucbert/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/home/alucbert/.local/share/nvim/site/pack/packer/start/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/alucbert/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  popfix = {
    loaded = true,
    path = "/home/alucbert/.local/share/nvim/site/pack/packer/start/popfix",
    url = "https://github.com/RishabhRD/popfix"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/alucbert/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  tcomment_vim = {
    loaded = true,
    path = "/home/alucbert/.local/share/nvim/site/pack/packer/start/tcomment_vim",
    url = "https://github.com/tomtom/tcomment_vim"
  },
  ["telescope-fzf-writer.nvim"] = {
    loaded = true,
    path = "/home/alucbert/.local/share/nvim/site/pack/packer/start/telescope-fzf-writer.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-writer.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\nÇ\4\0\0\a\0\21\0\0316\0\0\0'\2\1\0B\0\2\0029\0\2\0006\1\0\0'\3\3\0B\1\2\0029\2\4\0015\4\n\0005\5\6\0005\6\5\0=\6\a\0055\6\b\0=\6\t\5=\5\v\0045\5\r\0005\6\f\0=\6\14\5=\5\15\0044\5\0\0=\5\16\4B\2\2\0019\2\17\1'\4\14\0B\2\2\1\18\2\0\0'\4\18\0'\5\19\0'\6\20\0B\2\4\1K\0\1\0005:lua require'telescope.builtin'.find_files()<CR>\n<C-p>\6n\19load_extension\rmappings\15extensions\15fzf_writer\1\0\0\1\0\3\29minimum_files_characters\3\0\28minimum_grep_characters\3\0\20use_highlighter\2\rdefaults\1\0\0\25file_ignore_patterns\1\4\0\0\fdeps/.*\t.git\17node_modules\22vimgrep_arguments\1\0\0\1\b\0\0\arg\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\17--smart-case\nsetup\14telescope\bmap\nutils\frequire\0" },
    loaded = true,
    path = "/home/alucbert/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\nÙ\a\0\0\6\0)\0/6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\a\0005\4\4\0005\5\5\0=\5\6\4=\4\b\0035\4\t\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0005\5\14\0=\5\6\4=\4\15\0035\4\16\0005\5\17\0=\5\6\4=\4\18\0035\4\19\0005\5\20\0=\5\6\4=\4\21\3=\3\22\0025\3\23\0=\3\24\0025\3\26\0005\4\25\0=\4\27\0035\4\28\0=\4\29\0035\4\30\0=\4\31\0035\4 \0=\4!\0035\4\"\0=\4#\3=\3$\0025\3%\0005\4&\0=\4'\3=\3(\2B\0\2\1K\0\1\0\vsearch\targs\1\6\0\0\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\1\0\2\fpattern\27\\b(KEYWORDS)(\\(.*\\))?:\fcommand\arg\vcolors\fdefault\1\3\0\0\15Identifier\f#7C3AED\thint\1\3\0\0\30LspDiagnosticsDefaultHint\f#10B981\tinfo\1\3\0\0%LspDiagnosticsDefaultInformation\f#2563EB\fwarning\1\4\0\0!LspDiagnosticsDefaultWarning\15WarningMsg\f#FBBF24\nerror\1\0\0\1\4\0\0\31LspDiagnosticsDefaultError\rErrorMsg\f#DC2626\14highlight\1\0\6\17max_line_len\3ê\3\nafter\5\vbefore\5\fpattern\31.*<(KEYWORDS)(\\(.*\\))?\\s*:\fkeyword\abg\18comments_only\2\rkeywords\tNOTE\1\2\0\0\tINFO\1\0\2\ticon\tÔ°ß \ncolor\thint\tPERF\1\4\0\0\nOPTIM\16PERFORMANCE\rOPTIMIZE\1\0\1\ticon\tÔôë \tWARN\1\3\0\0\fWARNING\bXXX\1\0\2\ticon\tÔÅ± \ncolor\fwarning\tHACK\1\0\2\ticon\tÔíê \ncolor\fwarning\tTODO\1\0\2\ticon\tÔÄå \ncolor\tinfo\bFIX\1\0\0\balt\1\5\0\0\nFIXME\bBUG\nFIXIT\nISSUE\1\0\2\ticon\tÔÜà \ncolor\nerror\1\0\3\nsigns\2\19merge_keywords\2\18sign_priority\3\b\nsetup\18todo-comments\frequire\0" },
    loaded = true,
    path = "/home/alucbert/.local/share/nvim/site/pack/packer/start/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ultisnips = {
    config = { "\27LJ\2\nõ\3\0\0\3\0\b\0\0256\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\0016\0\0\0009\0\1\0'\2\5\0B\0\2\0016\0\0\0009\0\1\0'\2\6\0B\0\2\0016\0\0\0009\0\1\0'\2\a\0B\0\2\1K\0\1\0001let g:UltiSnipsJumpBackwardTrigger=\"<s-tab>\".let g:UltiSnipsJumpForwardTrigger=\"<tab>\"(let g:UltiSnipsListSnippets=\"<nop>\")let g:UltiSnipsExpandTrigger=\"<c-s>\"Klet g:UltiSnipsSnippetDirectories = [$HOME.\"/.config/nvim/ultisnips/\"]Eautocmd BufEnter * if &filetype == \"\" | setlocal ft=text | endif\bcmd\bvim\0" },
    loaded = true,
    path = "/home/alucbert/.local/share/nvim/site/pack/packer/start/ultisnips",
    url = "https://github.com/SirVer/ultisnips"
  },
  ["vim-abolish"] = {
    loaded = true,
    path = "/home/alucbert/.local/share/nvim/site/pack/packer/start/vim-abolish",
    url = "https://github.com/tpope/vim-abolish"
  },
  ["vim-airline"] = {
    config = { "\27LJ\2\nà\2\0\0\3\0\6\0\0176\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\0016\0\0\0009\0\1\0'\2\5\0B\0\2\1K\0\1\0&let g:airline_powerline_fonts = 15let g:airline#extensions#tabline#tab_nr_type = 19let g:airline#extensions#tabline#buffer_idx_mode = 11let g:airline#extensions#tabline#enabled = 1\bcmd\bvim\0" },
    loaded = true,
    path = "/home/alucbert/.local/share/nvim/site/pack/packer/start/vim-airline",
    url = "https://github.com/vim-airline/vim-airline"
  },
  ["vim-airline-themes"] = {
    loaded = true,
    path = "/home/alucbert/.local/share/nvim/site/pack/packer/start/vim-airline-themes",
    url = "https://github.com/vim-airline/vim-airline-themes"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/home/alucbert/.local/share/nvim/site/pack/packer/start/vim-devicons",
    url = "https://github.com/ryanoasis/vim-devicons"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/alucbert/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    path = "/home/alucbert/.local/share/nvim/site/pack/packer/start/vim-gitgutter",
    url = "https://github.com/airblade/vim-gitgutter"
  },
  ["vim-mustache-handlebars"] = {
    loaded = true,
    path = "/home/alucbert/.local/share/nvim/site/pack/packer/start/vim-mustache-handlebars",
    url = "https://github.com/mustache/vim-mustache-handlebars"
  },
  ["vim-rooter"] = {
    config = { "\27LJ\2\n:\0\0\2\0\4\0\0056\0\0\0009\0\1\0005\1\3\0=\1\2\0K\0\1\0\1\2\0\0\t.git\20rooter_patterns\6g\bvim\0" },
    loaded = true,
    path = "/home/alucbert/.local/share/nvim/site/pack/packer/start/vim-rooter",
    url = "https://github.com/airblade/vim-rooter"
  },
  ["vim-stay"] = {
    config = { "\27LJ\2\nd\0\0\3\0\4\0\t6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\1K\0\1\0\28set viewoptions-=curdir\29set viewoptions-=options\bcmd\bvim\0" },
    loaded = true,
    path = "/home/alucbert/.local/share/nvim/site/pack/packer/start/vim-stay",
    url = "https://github.com/vim-scripts/vim-stay"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\2\nÙ\a\0\0\6\0)\0/6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\a\0005\4\4\0005\5\5\0=\5\6\4=\4\b\0035\4\t\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0005\5\14\0=\5\6\4=\4\15\0035\4\16\0005\5\17\0=\5\6\4=\4\18\0035\4\19\0005\5\20\0=\5\6\4=\4\21\3=\3\22\0025\3\23\0=\3\24\0025\3\26\0005\4\25\0=\4\27\0035\4\28\0=\4\29\0035\4\30\0=\4\31\0035\4 \0=\4!\0035\4\"\0=\4#\3=\3$\0025\3%\0005\4&\0=\4'\3=\3(\2B\0\2\1K\0\1\0\vsearch\targs\1\6\0\0\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\1\0\2\fpattern\27\\b(KEYWORDS)(\\(.*\\))?:\fcommand\arg\vcolors\fdefault\1\3\0\0\15Identifier\f#7C3AED\thint\1\3\0\0\30LspDiagnosticsDefaultHint\f#10B981\tinfo\1\3\0\0%LspDiagnosticsDefaultInformation\f#2563EB\fwarning\1\4\0\0!LspDiagnosticsDefaultWarning\15WarningMsg\f#FBBF24\nerror\1\0\0\1\4\0\0\31LspDiagnosticsDefaultError\rErrorMsg\f#DC2626\14highlight\1\0\6\17max_line_len\3ê\3\nafter\5\vbefore\5\fpattern\31.*<(KEYWORDS)(\\(.*\\))?\\s*:\fkeyword\abg\18comments_only\2\rkeywords\tNOTE\1\2\0\0\tINFO\1\0\2\ticon\tÔ°ß \ncolor\thint\tPERF\1\4\0\0\nOPTIM\16PERFORMANCE\rOPTIMIZE\1\0\1\ticon\tÔôë \tWARN\1\3\0\0\fWARNING\bXXX\1\0\2\ticon\tÔÅ± \ncolor\fwarning\tHACK\1\0\2\ticon\tÔíê \ncolor\fwarning\tTODO\1\0\2\ticon\tÔÄå \ncolor\tinfo\bFIX\1\0\0\balt\1\5\0\0\nFIXME\bBUG\nFIXIT\nISSUE\1\0\2\ticon\tÔÜà \ncolor\nerror\1\0\3\nsigns\2\19merge_keywords\2\18sign_priority\3\b\nsetup\18todo-comments\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
-- Config for: vim-stay
time([[Config for vim-stay]], true)
try_loadstring("\27LJ\2\nd\0\0\3\0\4\0\t6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\1K\0\1\0\28set viewoptions-=curdir\29set viewoptions-=options\bcmd\bvim\0", "config", "vim-stay")
time([[Config for vim-stay]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nå\3\0\0\5\0\v\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0004\4\0\0=\4\a\0035\4\b\0=\4\t\3=\3\n\2B\0\2\1K\0\1\0\15playground\16keybindings\1\0\n\vupdate\6R\14goto_node\t<cr>\21unfocus_language\6F\19focus_language\6f\28toggle_language_display\6I\27toggle_anonymous_nodes\6a\30toggle_injected_languages\6t\21toggle_hl_groups\6i\24toggle_query_editor\6o\14show_help\6?\fdisable\1\0\3\15updatetime\3\25\20persist_queries\1\venable\2\14highlight\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: fzf.vim
time([[Config for fzf.vim]], true)
try_loadstring("\27LJ\2\nÍ\1\0\0\6\0\b\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0\18\1\0\0'\3\3\0'\4\4\0'\5\5\0B\1\4\1\18\1\0\0'\3\3\0'\4\6\0'\5\a\0B\1\4\1K\0\1\0Ç\1:call fzf#vim#grep('ag --ignore deps --ignore node_modules --ignore .git --color -- \"^(?=.)\"', 0, fzf#vim#with_preview())<CR>\n<c-j>\16:BLines<CR>\6?\6n\bmap\nutils\frequire\0", "config", "fzf.vim")
time([[Config for fzf.vim]], false)
-- Config for: ultisnips
time([[Config for ultisnips]], true)
try_loadstring("\27LJ\2\nõ\3\0\0\3\0\b\0\0256\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\0016\0\0\0009\0\1\0'\2\5\0B\0\2\0016\0\0\0009\0\1\0'\2\6\0B\0\2\0016\0\0\0009\0\1\0'\2\a\0B\0\2\1K\0\1\0001let g:UltiSnipsJumpBackwardTrigger=\"<s-tab>\".let g:UltiSnipsJumpForwardTrigger=\"<tab>\"(let g:UltiSnipsListSnippets=\"<nop>\")let g:UltiSnipsExpandTrigger=\"<c-s>\"Klet g:UltiSnipsSnippetDirectories = [$HOME.\"/.config/nvim/ultisnips/\"]Eautocmd BufEnter * if &filetype == \"\" | setlocal ft=text | endif\bcmd\bvim\0", "config", "ultisnips")
time([[Config for ultisnips]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n:\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\19UltiSnips#Anon\afn\bvimR\0\1\3\1\2\0\f-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\0¿\21select_next_item\fvisibleR\0\1\3\1\2\0\f-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\0¿\21select_prev_item\fvisible’\4\1\0\t\0&\0B6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0005\4\4\0003\5\3\0=\5\5\4=\4\a\0035\4\n\0009\5\b\0009\5\t\5B\5\1\2=\5\v\0049\5\b\0009\5\f\5B\5\1\2=\5\r\0049\5\b\0009\5\14\5)\a¸ˇB\5\2\2=\5\15\0049\5\b\0009\5\14\5)\a\4\0B\5\2\2=\5\16\0049\5\b\0009\5\17\5B\5\1\2=\5\18\0049\5\b\0009\5\19\5B\5\1\2=\5\20\0049\5\b\0009\5\21\0055\a\24\0009\b\22\0009\b\23\b=\b\25\aB\5\2\2=\5\26\0043\5\27\0=\5\28\0043\5\29\0=\5\30\4=\4\b\0034\4\a\0005\5\31\0>\5\1\0045\5 \0>\5\2\0045\5!\0>\5\3\0045\5\"\0>\5\4\0045\5#\0>\5\5\0045\5$\0>\5\6\4=\4%\3B\1\2\0012\0\0ÄK\0\1\0\fsources\1\0\1\tname\14ultisnips\1\0\1\tname\rnvim_lua\1\0\1\tname\rnvim_lsp\1\0\1\tname\tcalc\1\0\1\tname\vbuffer\1\0\1\tname\tpath\f<S-Tab>\0\n<Tab>\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-f>\n<C-d>\16scroll_docs\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n+\2\0\4\2\1\0\6-\0\0\0009\0\0\0-\2\1\0G\3\0\0A\0\1\1K\0\1\0\0\0\1¿\fbuf_mapÿ\6\1\2\b\2\27\0D3\2\0\0\18\3\2\0'\5\1\0'\6\2\0'\a\3\0B\3\4\1\18\3\2\0'\5\1\0'\6\4\0'\a\5\0B\3\4\1\18\3\2\0'\5\1\0'\6\6\0'\a\a\0B\3\4\1\18\3\2\0'\5\1\0'\6\b\0'\a\t\0B\3\4\1\18\3\2\0'\5\1\0'\6\n\0'\a\v\0B\3\4\1\18\3\2\0'\5\1\0'\6\f\0'\a\r\0B\3\4\1\18\3\2\0'\5\1\0'\6\14\0'\a\15\0B\3\4\1\18\3\2\0'\5\1\0'\6\16\0'\a\17\0B\3\4\1\18\3\2\0'\5\1\0'\6\18\0'\a\19\0B\3\4\1\18\3\2\0'\5\1\0'\6\20\0'\a\21\0B\3\4\0019\3\22\0009\3\23\3\15\0\3\0X\4\4Ä6\3\24\0009\3\25\3'\5\26\0B\3\2\1-\3\1\0\n\3\0\0X\3\4Ä-\3\1\0\18\5\0\0\18\6\1\0B\3\3\0012\0\0ÄK\0\1\0\0\0\0¿<autocmd BufWritePre * lua vim.lsp.buf.formatting_sync()\bcmd\bvim\24document_formatting\26resolved_capabilities&<cmd>lua vim.lsp.buf.rename()<CR>\agr-<cmd>lua vim.diagnostic.open_float()<CR>\6L+<cmd>lua vim.lsp.buf.code_action()<CR>\n<C-c>0<cmd>lua vim.lsp.buf.workspace_symbol()<CR>\15<leader>yw/<cmd>lua vim.lsp.buf.document_symbol()<CR>\15<leader>yd*<cmd>lua vim.lsp.buf.references()<CR>\14<leader>r/<cmd>lua vim.lsp.buf.type_definition()<CR>\14<leader>t.<cmd>lua vim.lsp.buf.signature_help()<CR>\15<leader>ys%<cmd>lua vim.lsp.buf.hover()<CR>\6K*<cmd>lua vim.lsp.buf.definition()<CR>\agd\6n\0\22\1\1\2\1\1\0\0033\1\0\0002\0\0ÄL\1\2\0\1¿\0ë\14\1\0\16\0008\06\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0029\2\4\0026\4\5\0009\4\6\0049\4\a\0049\4\b\4B\4\1\0A\2\0\0023\3\t\0004\4\n\0006\5\0\0'\a\n\0B\5\2\2>\5\1\0046\5\0\0'\a\v\0B\5\2\2>\5\2\0046\5\0\0'\a\f\0B\5\2\2>\5\3\0046\5\0\0'\a\r\0B\5\2\2>\5\4\0045\5\14\0>\5\5\0045\5\15\0>\5\6\0045\5\16\0>\5\a\0045\5\17\0>\5\b\0045\5\18\0>\5\t\0046\5\5\0009\5\6\0059\5\a\0055\6\20\0=\6\19\0059\5\21\0029\5\22\0059\5\23\5+\6\2\0=\6\24\0056\5\5\0009\5\6\0059\5\25\0056\6\5\0009\6\6\0069\6\27\0066\b\5\0009\b\6\b9\b\28\b9\b\29\b5\t\30\0005\n\31\0=\n \tB\6\3\2=\6\26\0056\5\5\0009\5\6\0059\5\25\0056\6\0\0'\b\"\0B\6\2\0029\6#\6=\6!\0056\5\5\0009\5$\0059\5%\5'\a&\0005\b'\0B\5\3\0016\5\5\0009\5$\0059\5%\5'\a(\0005\b)\0B\5\3\0016\5\5\0009\5$\0059\5%\5'\a*\0005\b+\0B\5\3\0016\5\5\0009\5$\0059\5%\5'\a,\0005\b-\0B\5\3\0016\5.\0\18\a\4\0B\5\2\4X\b\18Ä9\n/\t8\n\n\0009\n0\n5\f2\0\18\r\3\0009\0151\tB\r\2\2=\r1\f9\r3\t=\r3\f9\r4\t=\r4\f9\r5\t=\r5\f9\r6\t=\r6\f=\0027\fB\n\2\1E\b\3\3R\bÏ2\0\0ÄK\0\1\0\17capabilities\14filetypes\17init_options\rsettings\bcmd\1\0\0\14on_attach\nsetup\tname\vipairs\1\0\2\vtexthl\27LspDiagnosticsSignHint\ttext\tÔÑ® \27LspDiagnosticsSignHint\1\0\2\vtexthl\"LspDiagnosticsSignInformation\ttext\tÔÑ© \"LspDiagnosticsSignInformation\1\0\2\vtexthl\30LspDiagnosticsSignWarning\ttext\tÔÑ™ \30LspDiagnosticsSignWarning\1\0\2\vtexthl\28LspDiagnosticsSignError\ttext\tÔÄç \28LspDiagnosticsSignError\16sign_define\afn\24code_action_handler\23lsputil.codeAction\28textDocument/codeAction\17virtual_text\1\0\1\vprefix\tÓäÖ \1\0\2\14underline\2\21update_in_insert\1\27on_publish_diagnostics\15diagnostic\twith$textDocument/publishDiagnostics\rhandlers\19snippetSupport\19completionItem\15completion\17textDocument\1\26\0\0\18 Ôíû  (Text) \19 Ôö¶  (Method)\21 Ôûî  (Function)\24 Ôê•  (Constructor)\18 Ô¥≤  (Field)\21 Óúñ  (Variable)\18 Ô†ñ  (Class)\22 Ô∞Æ  (Interface)\19 Ôô®  (Module)\20 Ô™∂ (Property)\17 Ôëµ  (Unit)\18 Ô¢ü  (Value)\16 Ô©ó (Enum)\20 Ô†ä  (Keyword)\20 ÔÉÑ  (Snippet)\18 Ô£ó  (Color)\17 Ôúì  (File)\22 Ôúú  (Reference)\19 Ôùä  (Folder)\23 ÔÖù  (EnumMember)\21 Ô≤Ä  (Constant)\19 Ô≥§  (Struct)\18 ÔÉß  (Event)\21 Ôó´  (Operator)\26 ÔûÉ  (TypeParameter)\23CompletionItemKind\1\0\1\tname\vjsonls\1\0\1\tname\vbashls\1\0\1\tname\ncmake\1\0\1\tname\vclangd\1\0\1\tname\fpyright\18lsp.omnisharp\15lsp.texlab\26lsp.nvim-lsp-ts-utils\20lsp.sumneko_lua\0\29make_client_capabilities\rprotocol\blsp\bvim\24update_capabilities\17cmp_nvim_lsp\nutils\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\né\3\0\0\6\0\21\0 6\0\0\0'\2\1\0B\0\2\0029\0\2\0\18\1\0\0'\3\3\0'\4\4\0'\5\5\0B\1\4\0016\1\6\0009\1\a\1)\2\3\0=\2\b\0016\1\6\0009\1\a\1)\2\1\0=\2\t\0016\1\0\0'\3\n\0B\1\2\0029\1\v\0015\3\f\0005\4\r\0=\4\14\0035\4\15\0005\5\16\0=\5\17\4=\4\18\0035\4\19\0=\4\20\3B\1\2\1K\0\1\0\16diagnostics\1\0\1\venable\1\ffilters\vcustom\1\6\0\0\t.git\b*.o\17node_modules\v.cache\nbuild\1\0\1\rdotfiles\2\24update_focused_file\1\0\1\venable\2\1\0\1\16open_on_tab\2\nsetup\14nvim-tree\29nvim_tree_indent_markers%nvim_tree_highlight_opened_files\6g\bvim\24:NvimTreeToggle<CR>\n<C-b>\6n\bmap\nutils\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: nvim-dap
time([[Config for nvim-dap]], true)
try_loadstring("\27LJ\2\ng\0\0\5\0\a\0\f6\0\0\0009\0\1\0009\0\2\0'\2\3\0006\3\0\0009\3\1\0039\3\4\3B\3\1\2'\4\5\0&\3\4\3'\4\6\0D\0\4\0\tfile\6/\vgetcwd\25Path to executable: \ninput\afn\bvim\t\1\0\a\0-\0b6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\1\0\0'\3\3\0B\1\2\2\18\2\0\0'\4\4\0'\5\5\0'\6\6\0B\2\4\1\18\2\0\0'\4\4\0'\5\a\0'\6\b\0B\2\4\1\18\2\0\0'\4\4\0'\5\t\0'\6\n\0B\2\4\1\18\2\0\0'\4\4\0'\5\v\0'\6\f\0B\2\4\1\18\2\0\0'\4\4\0'\5\r\0'\6\14\0B\2\4\1\18\2\0\0'\4\4\0'\5\15\0'\6\16\0B\2\4\1\18\2\0\0'\4\4\0'\5\17\0'\6\18\0B\2\4\1\18\2\0\0'\4\4\0'\5\19\0'\6\20\0B\2\4\1\18\2\0\0'\4\4\0'\5\21\0'\6\22\0B\2\4\1\18\2\0\0'\4\4\0'\5\23\0'\6\24\0B\2\4\0019\2\25\0015\3\27\0=\3\26\0029\2\28\0014\3\3\0005\4\30\0003\5\31\0=\5 \0044\5\0\0=\5!\0044\5\0\0=\5\"\4>\4\1\3=\3\29\0029\2\28\0019\3\28\0019\3\29\3=\3#\0026\2$\0009\2%\0029\2&\2'\4'\0'\5(\0B\2\3\0026\3\0\0'\5)\0B\3\2\0029\3*\3\18\5\2\0'\6+\0&\5\6\5B\3\2\0016\3\0\0'\5)\0B\3\2\0029\3*\3\18\5\2\0'\6,\0&\5\6\5B\3\2\1K\0\1\0\25/.vscode/launch.json\22/.vim/launch.json\18load_launchjs\19dap.ext.vscode\6;\f.git/..\ffinddir\afn\bvim\6c\targs\16environment\fprogram\0\1\0\6\ttype\tlldb\tname\vLaunch\frequest\vlaunch\18runInTerminal\1\16stopOnEntry\1\bcwd\23${workspaceFolder}\bcpp\19configurations\1\0\3\tname\tlldb\ttype\15executable\fcommand\25/usr/bin/lldb-vscode\tlldb\radapters%:lua require\"dap\".run_last()<CR>\15<leader>dl':lua require\"dap\".repl.close()<CR>\15<leader>dc&:lua require\"dap\".repl.open()<CR>\15<leader>doX:lua require\"dap\".set_breakpoint(nil, nil, vim.fn.input(\"Log point message: \"))<CR>\15<leader>lpQ:lua require\"dap\".set_breakpoint(vim.fn.input(\"Breakpoint condition: \"))<CR>\14<leader>B.:lua require\"dap\".toggle_breakpoint()<CR>\14<leader>b%:lua require\"dap\".step_out()<CR>\14<leader>k&:lua require\"dap\".step_into()<CR>\14<leader>j&:lua require\"dap\".step_over()<CR>\14<leader>l%:lua require\"dap\".continue()<CR>\t<F5>\6n\bdap\bmap\nutils\frequire\0", "config", "nvim-dap")
time([[Config for nvim-dap]], false)
-- Config for: lsp-trouble.nvim
time([[Config for lsp-trouble.nvim]], true)
try_loadstring("\27LJ\2\n¢\1\0\0\6\0\t\0\0166\0\0\0'\2\1\0B\0\2\0029\0\2\0006\1\0\0'\3\3\0B\1\2\0029\1\4\0015\3\5\0B\1\2\1\18\1\0\0'\3\6\0'\4\a\0'\5\b\0B\1\4\1K\0\1\0\26:LspTroubleToggle<CR>\14<leader>l\6n\1\0\1\25use_diagnostic_signs\2\nsetup\ftrouble\bmap\nutils\frequire\0", "config", "lsp-trouble.nvim")
time([[Config for lsp-trouble.nvim]], false)
-- Config for: nvim-dap-ui
time([[Config for nvim-dap-ui]], true)
try_loadstring("\27LJ\2\n\30\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\0¿\topen\31\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\0¿\nclose\31\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\0¿\nclose»\6\1\0\b\0-\0F6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\0035\4\a\0005\5\6\0=\5\b\4=\4\t\0035\4\14\0004\5\5\0005\6\n\0>\6\1\0055\6\v\0>\6\2\0055\6\f\0>\6\3\0055\6\r\0>\6\4\5=\5\15\4=\4\16\0035\4\18\0005\5\17\0=\5\15\4=\4\19\0035\4\20\0005\5\22\0005\6\21\0=\6\23\5=\5\t\4=\4\24\0035\4\25\0=\4\26\3B\1\2\0016\1\0\0'\3\27\0B\1\2\0029\2\28\0019\2\29\0029\2\30\0023\3 \0=\3\31\0029\2\28\0019\2!\0029\2\"\0023\3#\0=\3\31\0029\2\28\0019\2!\0029\2$\0023\3%\0=\3\31\0026\2\0\0'\4&\0B\2\2\0029\2'\2\18\3\2\0'\5(\0'\6)\0'\a*\0B\3\4\1\18\3\2\0'\5+\0'\6)\0'\a,\0B\3\4\0012\0\0ÄK\0\1\0\30:lua require\"dapui\".eval(\6n#:lua require\"dapui\".eval()<CR>\n<M-k>\6v\bmap\nutils\0\17event_exited\0\21event_terminated\vbefore\0\17dapui_config\22event_initialized\nafter\14listeners\bdap\fwindows\1\0\1\vindent\3\1\rfloating\nclose\1\0\0\1\3\0\0\6q\n<Esc>\1\0\1\vborder\vsingle\ttray\1\0\2\rposition\vbottom\tsize\3\n\1\2\0\0\trepl\fsidebar\relements\1\0\2\rposition\tleft\tsize\3(\1\0\2\aid\fwatches\tsize\4\0ÄÄ¿˛\3\1\0\2\aid\vstacks\tsize\4\0ÄÄ¿˛\3\1\0\2\aid\16breakpoints\tsize\4\0ÄÄ¿˛\3\1\0\2\aid\vscopes\tsize\4\0ÄÄ¿˛\3\rmappings\vexpand\1\0\4\vremove\6d\tedit\6e\topen\6o\trepl\6r\1\3\0\0\t<CR>\18<2-LeftMouse>\nicons\1\0\0\1\0\2\rexpanded\b‚ñæ\14collapsed\b‚ñ∏\nsetup\ndapui\frequire\0", "config", "nvim-dap-ui")
time([[Config for nvim-dap-ui]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\nÇ\4\0\0\a\0\21\0\0316\0\0\0'\2\1\0B\0\2\0029\0\2\0006\1\0\0'\3\3\0B\1\2\0029\2\4\0015\4\n\0005\5\6\0005\6\5\0=\6\a\0055\6\b\0=\6\t\5=\5\v\0045\5\r\0005\6\f\0=\6\14\5=\5\15\0044\5\0\0=\5\16\4B\2\2\0019\2\17\1'\4\14\0B\2\2\1\18\2\0\0'\4\18\0'\5\19\0'\6\20\0B\2\4\1K\0\1\0005:lua require'telescope.builtin'.find_files()<CR>\n<C-p>\6n\19load_extension\rmappings\15extensions\15fzf_writer\1\0\0\1\0\3\29minimum_files_characters\3\0\28minimum_grep_characters\3\0\20use_highlighter\2\rdefaults\1\0\0\25file_ignore_patterns\1\4\0\0\fdeps/.*\t.git\17node_modules\22vimgrep_arguments\1\0\0\1\b\0\0\arg\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\17--smart-case\nsetup\14telescope\bmap\nutils\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: vim-rooter
time([[Config for vim-rooter]], true)
try_loadstring("\27LJ\2\n:\0\0\2\0\4\0\0056\0\0\0009\0\1\0005\1\3\0=\1\2\0K\0\1\0\1\2\0\0\t.git\20rooter_patterns\6g\bvim\0", "config", "vim-rooter")
time([[Config for vim-rooter]], false)
-- Config for: markdown-preview.nvim
time([[Config for markdown-preview.nvim]], true)
try_loadstring("\27LJ\2\nê\2\0\0\2\0\n\0\0296\0\0\0009\0\1\0+\1\1\0=\1\2\0006\0\0\0009\0\1\0+\1\2\0=\1\3\0006\0\0\0009\0\1\0+\1\1\0=\1\4\0006\0\0\0009\0\1\0+\1\1\0=\1\5\0006\0\0\0009\0\1\0+\1\1\0=\1\6\0006\0\0\0009\0\1\0+\1\1\0=\1\a\0006\0\0\0009\0\1\0'\1\t\0=\1\b\0K\0\1\0\f${name}\20mkdp_page_title\26mkdp_echo_preview_url\27mkdp_open_to_the_world\28mkdp_command_for_global\22mkdp_refresh_slow\20mkdp_auto_close\20mkdp_auto_start\6g\bvim\0", "config", "markdown-preview.nvim")
time([[Config for markdown-preview.nvim]], false)
-- Config for: vim-airline
time([[Config for vim-airline]], true)
try_loadstring("\27LJ\2\nà\2\0\0\3\0\6\0\0176\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\0016\0\0\0009\0\1\0'\2\5\0B\0\2\1K\0\1\0&let g:airline_powerline_fonts = 15let g:airline#extensions#tabline#tab_nr_type = 19let g:airline#extensions#tabline#buffer_idx_mode = 11let g:airline#extensions#tabline#enabled = 1\bcmd\bvim\0", "config", "vim-airline")
time([[Config for vim-airline]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
