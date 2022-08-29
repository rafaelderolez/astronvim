return {
  diagnostics_style = { italic = true },
  -- Modify the color table
  colors = {
    fg = "#abb2bf",
  },
  -- Modify the highlight groups
  highlights = function(highlights)
    local C = require "default_theme.colors"

    highlights.Normal = { fg = C.fg, bg = C.bg }
    return highlights
  end,
  plugins = {
    lightspeed = true,
  },
}
