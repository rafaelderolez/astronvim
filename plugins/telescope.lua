return {
  defaults = {
    results_title = false,
    dynamic_preview_title = false,
    layout_config = {
      width = 0.90,
      height = 0.85,
      preview_cutoff = 120,
      horizontal = {
        preview_width = 0.6,
      },
      vertical = {
        width = 0.9,
        height = 0.95,
        preview_height = 0.5,
      },
      flex = {
        horizontal = {
          preview_width = 0.9,
        },
      },
    },
  },
  extensions = {
    project = {
      base_dirs = {
        "~/Code",
      },
      hidden_files = true, -- default: false
      theme = "dropdown",
      order_by = "asc",
      sync_with_nvim_tree = true, -- default false
    },
  },
}
