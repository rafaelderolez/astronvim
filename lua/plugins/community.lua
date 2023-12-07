return {
  -- Add community imports to the `lua/config/lazy.lua` file in your Neovim configuration folder (typically ~/.config/nvim)
  -- this guarantees that the community plugin specs are loaded before the user configuration

  -- This is a good place to do further customize the options set by the community plugins/packs
  -- {
  --   "catppuccin/nvim",
  --   opts = {
  --     integrations = {
  --       sandwich = false,
  --       noice = true,
  --       mini = true,
  --       leap = true,
  --       markdown = true,
  --       neotest = true,
  --       cmp = true,
  --       overseer = true,
  --       lsp_trouble = true,
  --       rainbow_delimiters = true,
  --     },
  --   },
  -- },
  {
    "lukas-reineke/indent-blankline.nvim",
    enabled = false,
  },
  {
    "pmizio/typescript-tools.nvim",
    dependencies = {
      "AstroNvim/astrolsp",
    },
    opts = {
      settings = {
        expose_as_code_action = "all",
      },
    },
  },
}
