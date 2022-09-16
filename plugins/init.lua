return {
  {
    "catppuccin/nvim",
    as = "catppuccin",
    config = function() require("catppuccin").setup(require "user.plugins.catppuccin") end,
  },

  "windwp/nvim-spectre", -- find & replace
  "ggandor/lightspeed.nvim", -- motion
  {
    "nvim-treesitter/nvim-treesitter-context", -- show current sticky context
    config = function() require("treesitter-context").setup(require "user.plugins.treesitter-context") end,
  },
  -- "vuki656/package-info.nvim", -- package.json helper (doesn't really work)
  {
    "sindrets/diffview.nvim", -- git diff view
    requires = "nvim-lua/plenary.nvim",
    config = function() require("diffview").setup(require "user.plugins.diffview") end,
  },
  -- "nvim-telescope/telescope-file-browser.nvim",
  {
    "jose-elias-alvarez/typescript.nvim",
    after = "mason-lspconfig.nvim",
    config = function() require("typescript").setup(require "user.plugins.typescript") end,
  },

  -- Copilot
  -- "github/copilot.vim", -- only needed for initial install
  "zbirenbaum/copilot.lua",
  {
    "zbirenbaum/copilot-cmp",
    after = { "copilot.lua" },
    config = function() require("copilot_cmp").setup() end,
  },
}
