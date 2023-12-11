return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    {
      "nvim-telescope/telescope-file-browser.nvim",
      config = function() require("telescope").load_extension "file_browser" end,
    },
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function() require("telescope").load_extension "fzf" end,
    },
    {
      "piersolenski/telescope-import.nvim",
      config = function() require("telescope").load_extension "import" end,
    },
  },
  mappings = {
    n = {
      ["<leader>ff"] = false,
      ["<leader>fw"] = false,
      ["<leader>fo"] = false,
    },
  },
  opts = function(_, opts)
    local fb_actions = require("telescope").extensions.file_browser.actions
    return require("astrocore").extend_tbl(opts, {
      defaults = {
        file_ignore_patterns = { "node_modules/", ".git/", ".cache/", ".DS_Store", ".vercel/", ".next/" },
        path_display = { "smart" },
        results_title = false,
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
      extensions = {
        fzf = {
          fuzzy = true, -- false will only do exact matching
          override_generic_sorter = true, -- override the generic sorter
          override_file_sorter = true, -- override the file sorter
          case_mode = "smart_case", -- "ignore_case" | "respect_case" | "smart_case"
        },
        file_browser = {
          mappings = {
            i = {
              H = fb_actions.toggle_hidden,
            },
            n = {
              H = fb_actions.toggle_hidden,
            },
          },
        },
      },
      pickers = {
        lsp_references = {
          show_line = false,
        },
        lsp_dynamic_workspace_symbols = {
          show_line = false,
          layout_config = {
            horizontal = {
              preview_width = 0.5,
            },
          },
        },
      },
    })
  end,
}
