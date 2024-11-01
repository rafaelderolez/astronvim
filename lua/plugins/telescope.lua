--- @type LazySpec
return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    {
      "piersolenski/telescope-import.nvim",
      config = function() require("telescope").load_extension "import" end,
    },
    {
      "vuki656/package-info.nvim",
      config = function() require("telescope").load_extension "package_info" end,
    },
  },
  specs = {
    {
      "AstroNvim/astrocore",
      opts = {
        mappings = {
          n = {
            ["<Leader>fi"] = { "<cmd>Telescope import<CR>", desc = "Find imports" },
            ["<Leader>pj"] = { "<cmd>Telescope package_info<CR>", desc = "Package Info" },
          },
        },
      },
    },
  },
  opts = function(_, opts)
    return require("astrocore").extend_tbl(opts, {
      defaults = {
        file_ignore_patterns = { "node_modules/", ".git/", ".cache/", ".DS_Store", ".vercel/", ".next/" },
        path_display = {
          "filename_first",
        },
        results_title = false,
        dynamic_preview_title = true,
        layout_strategy = "flex",
        filesize_limit = 0.1, -- MB
        layout_config = {
          width = 0.9,
          height = 0.9,
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
      pickers = {
        find_files = {
          -- previewer = false,
        },
        lsp_references = {
          show_line = false,
        },
      },
      extensions = {
        package_info = {
          theme = "cursor",
        },
      },
    })
  end,
}
