---@type LazySpec
return {
  "nvim-neo-tree/neo-tree.nvim",
  version = false,
  branch = "main",
  opts = {
    enable_diagnostics = false,
    open_files_do_not_replace_types = { "terminal", "Trouble", "qf", "edgy" },
    default_component_configs = {
      indent = { padding = 1, indent_size = 2 },
    },
    popup_border_style = "single",
    window = {
      width = 40,
      position = "right",
    },
    source_selector = {
      winbar = false,
      statusline = false,
      show_scrolled_off_parent_node = true,
      sources = {
        { source = "filesystem" },
      },
    },
    filesystem = {
      hide_dotfiles = false,
      follow_current_file = { enabled = true },
      filtered_items = {
        visible = true,
        hide_by_name = {
          ".git",
          "node_modules",
        },
        never_show = {
          ".DS_Store",
          "thumbs.db",
          ".git/*",
        },

        always_show = {
          ".env*",
          ".gitignore",
          ".github",
        },
      },
    },
  },
}
