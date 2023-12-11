return {
  "loctvl842/monokai-pro.nvim",
  opts = {
    terminal_colors = true,
    devicons = true, -- highlight the icons of `nvim-web-devicons`
    filter = "pro", -- classic | octagon | pro | machine | ristretto | spectrum
    plugins = {
      indent_blankline = {
        context_highlight = "pro", -- default | pro
        context_start_underline = false,
      },
    },
    override = function(c)
      return {
        IndentBlanklineChar = { fg = c.base.dimmed4 },
      }
    end,
    overridePalette = function(filter)
      return {
        dark2 = "#101014",
        dark1 = "#16161E",
        background = "#1A1B26",
        text = "#C0CAF5",
        accent1 = "#f7768e",
        accent2 = "#7aa2f7",
        accent3 = "#e0af68",
        accent4 = "#9ece6a",
        accent5 = "#0DB9D7",
        accent6 = "#9d7cd8",
        dimmed1 = "#737aa2",
        dimmed2 = "#787c99",
        dimmed3 = "#363b54",
        dimmed4 = "#363b54",
        dimmed5 = "#16161e",
      }
    end,
  },
}
