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
    autohide_tabline = {
      {
        event = "User",
        desc = "Auto hide tabline",
        pattern = "AstroBufsUpdated",
        callback = function()
          local new_showtabline = #vim.t.bufs > 1 and 2 or 1
          if new_showtabline ~= vim.opt.showtabline:get() then vim.opt.showtabline = new_showtabline end
        end,
      },
    },
  },
}

return { "AstroNvim/astrocore", opts = opts }
