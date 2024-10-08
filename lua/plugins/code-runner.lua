-- Code runner
return {
  "CRAG666/code_runner.nvim",
  dependencies = "nvim-lua/plenary.nvim",
  opts = {
    filetype = {
      -- python = "python3 -u",
      -- sh = "zsh",
      markdown = "glow",
      -- typescript = "deno run",
      javascript = "node",
    },
    mode = "toggleterm",
  },
  specs = {
    {
      "AstroNvim/astrocore",
      opts = {
        mappings = {
          n = {
            ["<Leader>."] = { "<cmd>RunCode<CR>", desc = "Run code" },
          },
        },
      },
    },
  },
}
