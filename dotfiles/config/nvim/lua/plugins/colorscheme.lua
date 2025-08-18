return {
  {
    "metalelf0/jellybeans-nvim",
    dependencies = {
      "rktjmp/lush.nvim",
    },
  },
  { "ellisonleao/gruvbox.nvim" },
  { "datsfilipe/min-theme.nvim" },
  { "catppuccin/nvim" },
  {
    "thesimonho/kanagawa-paper.nvim",
    lazy = false,
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    config = function()
      require("kanagawa").setup({
        compile = false, -- enable compiling the colorscheme
        undercurl = true, -- enable undercurls
        commentStyle = { italic = true },
        functionStyle = {},
        keywordStyle = { italic = true },
        statementStyle = { bold = true },
        typeStyle = {},
        transparent = false, -- do not set background color
        dimInactive = false, -- dim inactive window `:h hl-NormalNC`
        terminalColors = true, -- define vim.g.terminal_color_{0,17}
        background = { -- map the value of 'background' option to a theme
          dark = "wave",
          light = "lotus",
        },
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = { colorscheme = "jellybeans-nvim" },
  },
  {
    "neanias/everforest-nvim",
    version = false,
    lazy = false,
    priority = 1000, -- make sure to load this before all the other start plugins
    -- Optional; default configuration will be used if setup isn't called.
    config = function()
      require("everforest").setup({
        ---Controls the "hardness" of the background. Options are "soft", "medium" or "hard".
        ---Default is "medium".
        background = "soft",
        ---Whether italics should be used for keywords and more.
        italics = false,
        ---Disable italic fonts for comments. Comments are in italics by default, set
        ---this to `true` to make them _not_ italic!
        disable_italic_comments = false,
        ---The contrast of line numbers, indent lines, etc. Options are `"high"` or
        ---`"low"` (default).
        ui_contrast = "low",
      })
    end,
  },
  {
    "zaldih/themery.nvim",
    lazy = false,
    config = function()
      require("themery").setup({
        themes = {
          "jellybeans-nvim",
          {
            name = "min-theme",
            colorscheme = "min-theme",
            before = [[
							vim.o.background = "dark"
						]],
          },
          {
            name = "gruvbox-dark",
            colorscheme = "gruvbox",
            before = [[
							vim.opt.background = "dark"
						]],
          },
          {
            name = "gruvbox-light",
            colorscheme = "gruvbox",
            before = [[
							vim.opt.background = "light"
						]],
          },
          "catppuccin-latte",
          "catppuccin-frappe",
          "catppuccin-macchiato",
          "catppuccin-mocha",
          {
            name = "kanagawa-paper-auto",
            colorscheme = "kanagawa-paper",
          },
          {
            name = "kanagawa-paper-ink (dark)",
            colorscheme = "kanagawa-paper-ink",
          },
          {
            name = "kanagawa-paper-canvas (light)",
            colorscheme = "kanagawa-paper-canvas",
          },
          {
            name = "kanagawa-wave (dark)",
            colorscheme = "kanagawa",
            before = [[
           	vim.opt.background = "dark"
           ]],
          },
          {
            name = "kanagawa-lotus (light)",
            colorscheme = "kanagawa",
            before = [[
							vim.opt.background = "light"
						]],
          },
          {
            name = "everforest",
            colorscheme = "everforest",
            before = [[
							vim.go.background = "light"
						]],
          },
        },
      })
    end,
  },
}
