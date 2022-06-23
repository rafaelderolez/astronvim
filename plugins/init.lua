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
}
