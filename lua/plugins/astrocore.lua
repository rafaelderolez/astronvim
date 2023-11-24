---@type AstroCoreOpts
local opts = {
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
  },
}

return { "AstroNvim/astrocore", opts = opts }
