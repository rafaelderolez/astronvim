return {
  "akinsho/git-conflict.nvim",
  version = "*",
  config = true,
  lazy = false,
  cmd = {
    "GitConflictChooseOurs",
    "GitConflictChooseTheirs",
    "GitConflictChooseBoth",
    "GitConflictChooseNone",
    "GitConflictNextConflict",
    "GitConflictPrevConflict",
    "GitConflictListQf",
  },

  {
    "AstroNvim/astrocore",
    opts = function(_, opts)
      local maps = opts.mappings
      local prefix = "<Leader>gc"
      maps.n[prefix] = { desc = require("astroui").get_icon("Git", 1, true) .. "Git Conflict" }

      maps.n[prefix .. "b"] = { "<cmd>GitConflictChooseBoth<CR>", desc = "Choose Both" }
      maps.n[prefix .. "n"] = { "<cmd>GitConflictNextConflict<CR>", desc = "Move to Next Conflict" }
      maps.n[prefix .. "c"] = { "<cmd>GitConflictChooseOurs<CR>", desc = "Choose Current" }
      maps.n[prefix .. "p"] = { "<cmd>GitConflictPrevConflict<CR>", desc = "Move to Prev Conflict" }
      maps.n[prefix .. "i"] = { "<cmd>GitConflictChooseTheirs<CR>", desc = "Choose Incoming" }
    end,
  },
}
