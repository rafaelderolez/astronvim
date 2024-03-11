---@type AstroCoreOpts
return {
  "AstroNvim/astrocore",
  opts = {
    autocmds = {
      disabled_comment_continuation = {
        {
          event = "FileType",
          desc = "Disable comment continuation",
          command = "set formatoptions-=cro",
        },
      },
      auto_spell = {
        {
          event = "FileType",
          desc = "Enable wrap and spell for text like documents",
          pattern = { "gitcommit", "markdown", "text", "plaintex" },
          callback = function()
            vim.opt_local.wrap = true
            vim.opt_local.spell = true
          end,
        },
      },
      lf_term_enter = {
        {
          event = "User",
          pattern = "LfTermEnter",
          desc = "Set keymap for LfTermEnter",
          callback = function(a) vim.api.nvim_buf_set_keymap(a.buf, "t", "q", "q", { nowait = true }) end,
        },
      },
    },
  },
}
