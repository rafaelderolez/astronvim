return {
  transparent_background = false,
  term_colors = true,
  compile = {
    enabled = false,
    path = vim.fn.stdpath "cache" .. "/catppuccin",
  },
  dim_inactive = {
    enabled = false,
    shade = "dark",
    percentage = 0.15,
  },
  styles = {
    comments = { "italic" },
    conditionals = { "italic" },
    loops = {},
    functions = {},
    keywords = {},
    strings = {},
    variables = {},
    numbers = {},
    booleans = {},
    properties = {},
    types = {},
    operators = {},
  },
  integrations = {
    -- For various plugins integrations see https://github.com/catppuccin/nvim#integrations
    aerial = true,
    which_key = true,
    telescope = true,
    cmp = true,
    lightspeed = true,
    treesitter = true,
    treesitter_context = true,
    ts_rainbow = true,
    notify = true,
    indent_blankline = {
      enabled = true,
      colored_indent_levels = true,
    },
    neotree = {
      enabled = true,
      show_root = false,
      transparent_panel = false,
    },
    native_lsp = {
      enabled = true,
      virtual_text = {
        errors = { "italic" },
        hints = { "italic" },
        warnings = { "italic" },
        information = { "italic" },
      },
      underlines = {
        errors = { "underline" },
        hints = { "underline" },
        warnings = { "underline" },
        information = { "underline" },
      },
    },
  },
  color_overrides = {},
}
