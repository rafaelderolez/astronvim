--- @type LazySpec
return {
  "DreamMaoMao/yazi.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim",
  },
  specs = {
    {
      "AstroNvim/astrocore",
      opts = {
        mappings = {
          n = {
            ["<Leader>e"] = { "<Cmd>Yazi<CR>", desc = "Explorer" },
          },
        },
      },
    },
  },
}
