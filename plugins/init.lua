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
  {

    "vuki656/package-info.nvim",
    config = function() require("package-info").setup(require "user.plugins.package-info") end,
  },
  {
    "sindrets/diffview.nvim", -- git diff view
    requires = "nvim-lua/plenary.nvim",
    config = function() require("diffview").setup(require "user.plugins.diffview") end,
  },
  {
    "jose-elias-alvarez/typescript.nvim",
    after = "mason-lspconfig.nvim",
    config = function() require("typescript").setup(require "user.plugins.typescript") end,
  },
  {
    "ahmedkhalf/project.nvim",
    config = function() require("project_nvim").setup {} end,
  },

  -- Copilot
  -- "github/copilot.vim", -- only needed for initial install
  {
    "zbirenbaum/copilot.lua",
    event = { "VimEnter" },
    config = function()
      vim.defer_fn(function() require("copilot").setup(require "user.plugins.copilot") end, 100)
    end,
  },
  {
    "https://github.com/nat-418/boole.nvim",
    config = function() require("boole").setup(require "user.plugins.boole") end,
  },
}
