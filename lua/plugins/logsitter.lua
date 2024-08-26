---@type LazySpec
return {
  "gaelph/logsitter.nvim",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  event = "User AstroFile",
  opts = {
    path_format = "fileonly",
    prefix = "[🤖] ->",
  },
  specs = {
    {
      "AstroNvim/astrocore",
      opts = {
        mappings = {
          n = {
            ["<Leader>lg"] = {
              "<cmd>lua require('logsitter').log()<cr>",
              desc = "Log Sitter",
            },
            ["<Leader>lc"] = {
              "<cmd>LogsitterClearBuf<CR>",
              desc = "Log Sitter",
            },
          },
        },
      },
    },
  },
}
