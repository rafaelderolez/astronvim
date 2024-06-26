--- @type LazySpec
return {
  "folke/todo-comments.nvim",
  event = "User AstroFile",
  cmd = { "TodoTrouble", "TodoTelescope", "TodoLocList", "TodoQuickFix" },
  dependencies = {
    "AstroNvim/astrocore",
    opts = {
      mappings = {
        n = {
          ["<leader>fT"] = { "<Cmd>TodoTelescope<CR>", desc = "Find TODOs" },
        },
      },
    },
  },
  opts = {},
}
