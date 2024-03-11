---@type AstroCoreOpts
return {
  "AstroNvim/astrocore",
  opts = {
    features = {
      max_file = { size = 1024 * 100, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
      autopairs = true, -- enable autopairs at start
      cmp = true, -- enable completion at start
      highlighturl = true, -- highlight URLs at start
      notifications = true, -- enable notifications at start
    },
  },
}
