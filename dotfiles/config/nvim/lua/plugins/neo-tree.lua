return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    keys = {
      -- { "<leader>e", "<leader>fe", desc = "Neotree" },
      {
        "<leader>e",
        function()
          require("neo-tree.command").execute({ toggle = true, dir = LazyVim.root() })
        end,
        desc = "Explorer NeoTree (Root Dir)",
      },
      { "<leader>fe", false },
      { "<leader>fE", false },
      { "<leader>E", false },
      { "<leader>ge", false },
      { "<leader>be", false },
    },
    opts = {
      filesystem = {
        filtered_items = {
          visible = false, -- when true, they will just be displayed differently than normal items
          hide_dotfiles = true,
          hide_gitignored = true,
          hide_by_name = {
            "build",
          },
          hide_by_pattern = {
            "*.o",
          },
          always_show = { -- remains visible even if other settings would normally hide it
            --".gitignored",
          },
          always_show_by_pattern = { -- uses glob style patterns
            ".env*",
            ".*.env",
          },
          never_show = { -- remains hidden even if visible is toggled to true, this overrides always_show
            "node_modules",
          },
          never_show_by_pattern = { -- uses glob style patterns
          },
        },
      },
    },
  },
}
