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
  -- modify core features of AstroNvim
  features = {
    max_file = { size = 1024 * 100, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
    autopairs = true, -- enable autopairs at start
    cmp = true, -- enable completion at start
    highlighturl = true, -- highlight URLs at start
    notifications = true, -- enable notifications at start
  },
}

return { "AstroNvim/astrocore", opts = opts }
