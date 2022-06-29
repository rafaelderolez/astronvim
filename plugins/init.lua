return {
  {
    "catppuccin/nvim",
    as = "catppuccin",
    config = function()
      require("catppuccin").setup {}
    end,
  },
  "windwp/nvim-spectre",
  {
    "jose-elias-alvarez/typescript.nvim",
    after = "nvim-lsp-installer",
    config = function()
      require("typescript").setup { require "user.plugins.typescript" }
    end,
  },
  {
    "ggandor/leap.nvim",
    config = function()
      -- require("leap").setup { require "user.plugins.leap" }
      require("leap").set_default_keymaps()
    end,
  },
}
