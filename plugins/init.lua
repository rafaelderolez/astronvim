---@diagnostic disable: different-requires
return {
  {
    "catppuccin/nvim",
    as = "catppuccin",
    config = function() require("catppuccin").setup {} end,
  },
  "windwp/nvim-spectre",
  {
    "ggandor/leap.nvim",
    config = function()
      -- require("leap").setup { require "user.plugins.leap" }
      require("leap").set_default_keymaps()
    end,
  },
}
