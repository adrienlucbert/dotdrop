-- Auto install packer.nvim if not exists
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', '--depth', '1', install_path})
  execute 'packadd packer.nvim'
end

return require('packer').startup({
  function (use)
    -- Plugin manager
    use 'wbthomason/packer.nvim'

    -- Cosmetics
    use 'nanotech/jellybeans.vim'
    use 'ryanoasis/vim-devicons'
    -- TODO: replace with lualine
    use {
      'vim-airline/vim-airline',
      requires = 'vim-airline/vim-airline-themes',
      config = require('config.vim-airline')
    }

    -- LSP
    use { 'hrsh7th/cmp-nvim-lsp' }
    use {
      'neovim/nvim-lspconfig',
      requires = {
        {
          'RishabhRD/nvim-lsputils',
          requires = 'RishabhRD/popfix',
        },
      },
      config = require('lsp'),
    }
    use 'mustache/vim-mustache-handlebars'
    use {
      'jose-elias-alvarez/nvim-lsp-ts-utils',
      requires = {
        { 'jose-elias-alvarez/null-ls.nvim' },
        { 'nvim-lua/plenary.nvim' },
      }
    }
    -- Completion menu
    use { 'hrsh7th/nvim-cmp', config = require('config.nvim-cmp') }
    -- Diagnostics menu
    use {
      'folke/lsp-trouble.nvim',
      requires = 'kyazdani42/nvim-web-devicons',
      config = require('config.lsp-trouble'),
    }
    use {
      {
        'mfussenegger/nvim-dap',
        config = require('config.nvim-dap')
      },
      {
        'rcarriga/nvim-dap-ui',
        config = require('config.dap-ui')
      }
    }
    -- Snippets
    use { 'SirVer/ultisnips', config = require('config.ultisnips') }
    -- TODO(alucbert): ultisnips -> luasnip ?
    -- use { 'L3MON4D3/LuaSnip', config = require('config.luasnip') }
    -- Highlighting
    use {
      {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = require('config.treesitter'),
      },
      'nvim-treesitter/playground'
    }
    use 'norcalli/nvim-colorizer.lua' -- Highlight hex colors
    use {
      'folke/todo-comments.nvim',
      requires = "nvim-lua/plenary.nvim",
      config = require('config.todo-comments')
    }

    -- Git
    use 'tpope/vim-fugitive'
    use 'airblade/vim-gitgutter'

    -- Project navigation
    use { 'kyazdani42/nvim-tree.lua', config = require('config.nvim-tree') }

    -- TODO: replace with https://github.com/vijaymarupudi/nvim-fzf
    use {
      'junegunn/fzf.vim',
      requires = 'junegunn/fzf',
      config = require('config.fzf')
    }
    use {
      'nvim-telescope/telescope.nvim',
      requires = {
        { 'nvim-lua/popup.nvim' },
        { 'nvim-lua/plenary.nvim' },
        { 'nvim-telescope/telescope-fzf-writer.nvim' }
      },
      config = require('config.telescope')
    }

    -- Misc
    use 'rbgrouleff/bclose.vim'       -- Close a buffer without closing the window
    use {
      'vim-scripts/vim-stay',        -- Open a previously closed file where you left it
      config = require('config.vim-stay')
    }
    use 'tomtom/tcomment_vim'        -- Commenting and uncommenting bindings
    use {
      "airblade/vim-rooter",         -- `cd` to an identified root directory
      config = require('config.vim-rooter')
    }
    use {
      'iamcco/markdown-preview.nvim', -- Preview markdown in the browser
      config = require('config.markdown-preview')
    }

    -- Search & replace
    use 'tpope/vim-abolish'
  end,
  config = {
    display = {
      open_fn = require('packer.util').float,
    }
  }
})
