--- @type LazySpec
return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    {
      "piersolenski/telescope-import.nvim",
      config = function() require("telescope").load_extension "import" end,
    },
  },
  specs = {
    {
      "AstroNvim/astrocore",
      opts = {
        mappings = {
          n = {
            ["<Leader>fi"] = { "<cmd>Telescope import<cr>", desc = "Find imports" },
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
    })
  end,
}
