---@diagnostic disable: different-requires
return {
  {
    "catppuccin/nvim",
    as = "catppuccin",
    config = function() require("catppuccin").setup {} end,
  },
  "windwp/nvim-spectre",
  "ggandor/lightspeed.nvim",
  {
    "nvim-treesitter/nvim-treesitter-context",
    config = function() require("treesitter-context").setup { require "user.plugins.treesitter-context" } end,
  },
  -- "github/copilot.vim", -- temp
  -- {
  --   "samodostal/copilot-client.lua",
  --   requires = {
  --     "zbirenbaum/copilot.lua",
  --     "nvim-lua/plenary.nvim",
  --   },
  --   config = function() require "user.plugins.copilot" end,
  -- },
}
