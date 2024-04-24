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
  init = function()
    require("which-key").register {
      ["<leader>gc"] = { name = "Conflict" },
    }
  end,
  keys = {
    { "<Leader>gcb", "<cmd>GitConflictChooseBoth<CR>", desc = "choose both" },
    { "<Leader>gcn", "<cmd>GitConflictNextConflict<CR>", desc = "move to next conflict" },
    { "<Leader>gcc", "<cmd>GitConflictChooseOurs<CR>", desc = "choose current" },
    { "<Leader>gcp", "<cmd>GitConflictPrevConflict<CR>", desc = "move to prev conflict" },
    { "<Leader>gci", "<cmd>GitConflictChooseTheirs<CR>", desc = "choose incoming" },
  },
}
