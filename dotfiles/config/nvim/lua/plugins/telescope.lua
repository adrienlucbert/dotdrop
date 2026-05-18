return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      { "otavioschwanck/telescope-alternate.nvim" },
    },
    keys = {
      -- {"<C-p>", ":lua require'telescope.builtin'.find_files()<CR>", desc="Find files"},
      { "ga", ":Telescope telescope-alternate alternate_file<CR>", "Find alternate files" },
    },
    config = function()
      require("telescope").setup({
        defaults = {
          preview = {
            filesize_limit = 5, -- MB
          },
          vimgrep_arguments = {
            "rg",
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
            "--smart-case",
            "--max-filesize",
            "5M",
          },
          file_ignore_patterns = {
            "deps/.*",
            ".git/",
            "node_modules/",
          },
        },
        extensions = {
          ["telescope-alternate"] = {
            presets = { "go" },
            mappings = {
              -- [[ C mappings ]]
              -- ----------------
              -- alternate from C source to header
              -- { '**/([^/]*).c', {
              -- 	{ '**/[1].h', 'C (.h) header', true },
              -- } },
              -- -- alternate from C header to source
              -- { '**/([^/]*).h', {
              -- 	{ '**/[1].cpp', 'C++ (.cpp) source', true },
              -- 	{ '**/[1].c', 'C (.c) source', true },
              -- } },

              -- [[ C++ mappings ]]
              -- ------------------
              -- alternate from C++ source to header
              {
                "**/([^/]*).cpp",
                {
                  { "**/[1].hpp", "C++ (.hpp) header", true },
                  { "**/[1].hh", "C++ (.hh) header", true },
                  { "**/[1].h", "C (.h) header", true },
                },
              },
              -- alternate from C++ header to source
              {
                "**/([^/]*).hpp",
                {
                  { "**/[1].cpp", "C++ (.cpp) source", true },
                  { "**/[1].c", "C (.c) source", true },
                },
              },
              {
                "**/([^/]*).hh",
                {
                  { "**/[1].cpp", "C++ (.cpp) source", true },
                  { "**/[1].c", "C (.c) source", true },
                },
              },

              -- 	-- [ Sveltekit mapping ]
              -- 	-- ---------------
              -- 	-- +page
              -- 	{ "+page.svelte", {
              -- 		{ "+page.ts", "Client-side data load", true },
              -- 		{ "+page.server.ts", "Server-side data load", true },
              -- 		{ "+server.ts", "API", true },
              -- 	} },
              -- 	{ "+page.ts", {
              -- 		{ "+page.svelte", "View", true },
              -- 		{ "+page.server.ts", "Server-side data load", true },
              -- 		{ "+server.ts", "API", true },
              -- 	} },
              -- 	{ "+page.server.ts", {
              -- 		{ "+page.ts", "Client-side data load", true },
              -- 		{ "+page.svelte", "View", true },
              -- 		{ "+server.ts", "API", true },
              -- 	} },
              -- 	-- +layout
              -- 	{ "+layout.svelte", {
              -- 		{ "+layout.ts", "Client-side data load", true },
              -- 		{ "+layout.server.ts", "Server-side data load", true },
              -- 	} },
              -- 	{ "+layout.ts", {
              -- 		{ "+layout.svelte", "Layout view", true },
              -- 		{ "+layout.server.ts", "Server-side data load", true },
              -- 	} },
              -- 	{ "+layout.server.ts", {
              -- 		{ "+layout.ts", "Client-side data load", true },
              -- 		{ "+layout.svelte", "Layout view", true },
              -- 	} },
            },
          },
        },
        mappings = {},
      })
      require("telescope").load_extension("telescope-alternate")
    end,
  },
}
