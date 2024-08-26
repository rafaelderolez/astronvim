--- @type LazySpec
return {
  "AstroNvim/astrolsp",
  ---@type AstroLSPOpts
  opts = {
    ---@diagnostic disable: missing-fields
    config = {
      vtsls = {
        settings = {
          typescript = {
            updateImportsOnFileMove = { enabled = "always" },
            inlayHints = {
              parameterNames = { enabled = "all" },
              parameterTypes = { enabled = true },
              variableTypes = { enabled = true },
              propertyDeclarationTypes = { enabled = true },
              functionLikeReturnTypes = { enabled = true },
              enumMemberValues = { enabled = true },
            },
          },
          vtsls = {
            enableMoveToFileCodeAction = true,
            autoUseWorkspaceTsdk = true,
          },
        },
      },
    },
  },
  specs = {
    { "AstroNvim/astroui", opts = { icons = { TypeScript = "󰛦" } } },
    {
      "AstroNvim/astrocore",
      opts = function(_, opts)
        local maps = opts.mappings
        local prefix = "<Leader>v"

        maps.n[prefix] = { desc = require("astroui").get_icon("TypeScript", 1, true) .. "vtsls" }

        maps.n[prefix .. "r"] = { "<cmd>VtsExec restart_tsserver<CR>", desc = "Restart TS Server" }
        maps.n[prefix .. "l"] = { "<cmd>VtsExec open_tsserver_log<CR>", desc = "Open TS Server Log" }
        maps.n[prefix .. "p"] = { "<cmd>VtsExec reload_projects<CR>", desc = "Reload Projects" }
        maps.n[prefix .. "s"] = { "<cmd>VtsExec select_ts_version<CR>", desc = "Select TS Version" }
        maps.n[prefix .. "c"] = { "<cmd>VtsExec goto_project_config<CR>", desc = "Go to Project Config" }
        maps.n[prefix .. "d"] = { "<cmd>VtsExec goto_source_definition<CR>", desc = "Go to Source Definition" }
        maps.n[prefix .. "f"] = { "<cmd>VtsExec file_references<CR>", desc = "File References" }
        maps.n[prefix .. "n"] = { "<cmd>VtsExec rename_file<CR>", desc = "Rename File" }
        maps.n[prefix .. "o"] = { "<cmd>VtsExec organize_imports<CR>", desc = "Organize Imports" }
        maps.n[prefix .. "i"] = { "<cmd>VtsExec sort_imports<CR>", desc = "Sort Imports" }
        maps.n[prefix .. "u"] = { "<cmd>VtsExec remove_unused_imports<CR>", desc = "Remove Unused Imports" }
        maps.n[prefix .. "a"] = { "<cmd>VtsExec fix_all<CR>", desc = "Fix All" }
        maps.n[prefix .. "x"] = { "<cmd>VtsExec remove_unused<CR>", desc = "Remove Unused" }
        maps.n[prefix .. "m"] = { "<cmd>VtsExec add_missing_imports<CR>", desc = "Add Missing Imports" }
        maps.n[prefix .. "S"] = { "<cmd>VtsExec source_actions<CR>", desc = "Source Actions" }
      end,
    },
  },
}
