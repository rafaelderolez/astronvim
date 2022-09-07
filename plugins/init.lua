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
  "vuki656/package-info.nvim",
  -- "nvim-telescope/telescope-file-browser.nvim",
}
