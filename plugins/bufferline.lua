return {
  highlights = require("catppuccin.groups.integrations.bufferline").get(),
  options = {
    always_show_bufferline = true,
    diagnostics = "nvim_lsp",
    diagnostics_indicator = function(count) return "(" .. count .. ")" end,
    diagnostics_update_in_insert = false,
    modified_icon = "",
    separator_style = "thick",
    show_buffer_close_icons = false,
    show_buffer_icons = true,
    show_close_icon = false,
    tab_size = 25,
    offsets = { {
      text_align = "center",
    } },
  },
}
