--- @type LazySpec
return {
  "mikavilpas/yazi.nvim",
  event = "VeryLazy",
  specs = {
    {
      "AstroNvim/astrocore",
      opts = {
        mappings = {
          n = {
            ["<Leader>e"] = { "<Cmd>Yazi<CR>", desc = "Explorer (Yazi)" },
          },
        },
      },
    },
  },
}
