--- @type LazySpec
return {
  "chrisgrieser/nvim-scissors",
  dependencies = "nvim-telescope/telescope.nvim", -- optional
  opts = {
    snippetDir = vim.fn.stdpath "config" .. "/snippets",
    jsonFormatter = "jq",
  },
  specs = {
    {
      "AstroNvim/astrocore",
      opts = {
        mappings = {
          n = {
            ["<Leader>sa"] = {
              desc = "Add new snippet",
              function() require("scissors").addNewSnippet() end,
            },
            ["<Leader>se"] = {
              desc = "Edit snippets",
              function() require("scissors").editSnippet() end,
            },
          },
          x = {
            ["<Leader>sa"] = {
              desc = "Add new snippet",
              function() require("scissors").addNewSnippet() end,
            },
          },
        },
      },
    },
  },
}
