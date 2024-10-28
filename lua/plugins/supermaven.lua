return {
  "supermaven-inc/supermaven-nvim",
  event = "VeryLazy",
  opts = {
    keymaps = {
      accept_suggestion = "<A-l>",
      clear_suggestion = "<A-]>",
      accept_word = "<C-j>",
    },
    log_level = "info",
    disable_inline_completion = false, -- disables inline completion for use with cmp
    disable_keymaps = false, -- disables built in keymaps for more manual control
  },
}
