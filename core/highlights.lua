return {
  default_theme = function(highlights)
    -- New approach instead of diagnostic_style
    highlights.DiagnosticError.italic = true
    highlights.DiagnosticHint.italic = true
    highlights.DiagnosticInfo.italic = true
    highlights.DiagnosticWarn.italic = true

    local C = require "default_theme.colors"
    highlights.Normal = { fg = C.fg, bg = C.bg }
  end,
}
