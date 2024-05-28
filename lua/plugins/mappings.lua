-- AstroCore provides a central place to modify mappings set up as well as which-key menu titles
---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    mappings = {
      -- first key is the mode
      n = {
        -- Explorer
        ["<Leader>e"] = {
          "<Cmd>Yazi<CR>",
          desc = "Yazi",
        },
        -- Buffers
        ["]b"] = false,
        ["[b"] = false,
        L = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
        H = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },

        -- Telescope
        ["<Leader>fi"] = { "<cmd>Telescope import<cr>", desc = "Find imports" },

        -- Pretty pickers
        ["<Leader>ff"] = {
          desc = "Files",
          function() require("utils.telescope-pickers").prettyFilesPicker { picker = "find_files" } end,
        },
        ["<Leader>fo"] = {
          desc = "History",
          function() require("utils.telescope-pickers").prettyFilesPicker { picker = "oldfiles" } end,
        },
        ["<Leader>fw"] = {
          desc = "Word",
          function() require("utils.telescope-pickers").prettyGrepPicker { picker = "live_grep" } end,
        },

        ["<Leader>lg"] = {
          "<cmd>lua require('logsitter').log()<cr>",
          desc = "Log Sitter",
        },

        ["<Leader>j"] = {
          name = "Copilot Chat",
          t = { "<cmd>CopilotChatToggle<CR>", desc = "Toggle chat" },
          q = {
            function()
              local input = vim.fn.input "Quick Chat: "
              if input ~= "" then require("CopilotChat").ask(input, { context = "buffers" }) end
            end,
            "Quick chat",
          },
          h = {
            function()
              local actions = require "CopilotChat.actions"
              require("CopilotChat.integrations.telescope").pick(actions.help_actions())
            end,
            "Help actions",
          },
          p = {
            function()
              local actions = require "CopilotChat.actions"
              require("CopilotChat.integrations.telescope").pick(actions.prompt_actions())
            end,
            "Prompt actions",
          },
        },

        -- Snippets
        ["<Leader>sa"] = {
          desc = "Add new snippet",
          function() require("scissors").addNewSnippet() end,
        },
        ["<Leader>se"] = {
          desc = "Edit snippets",
          function() require("scissors").editSnippet() end,
        },

        ["<Leader>."] = { ":RunCode<CR>", desc = "Run code" },

        ["<Leader>v"] = {
          name = "vtsls",
          r = { "<cmd>VtsExec restart_tsserver<CR>", "Restart TS Server" },
          l = { "<cmd>VtsExec open_tsserver_log<CR>", "Open TS Server Log" },
          p = { "<cmd>VtsExec reload_projects<CR>", "Reload Projects" },
          s = { "<cmd>VtsExec select_ts_version<CR>", "Select TS Version" },
          c = { "<cmd>VtsExec goto_project_config<CR>", "Go to Project Config" },
          d = { "<cmd>VtsExec goto_source_definition<CR>", "Go to Source Definition" },
          f = { "<cmd>VtsExec file_references<CR>", "File References" },
          n = { "<cmd>VtsExec rename_file<CR>", "Rename File" },
          o = { "<cmd>VtsExec organize_imports<CR>", "Organize Imports" },
          i = { "<cmd>VtsExec sort_imports<CR>", "Sort Imports" },
          u = { "<cmd>VtsExec remove_unused_imports<CR>", "Remove Unused Imports" },
          a = { "<cmd>VtsExec fix_all<CR>", "Fix All" },
          x = { "<cmd>VtsExec remove_unused<CR>", "Remove Unused" },
          m = { "<cmd>VtsExec add_missing_imports<CR>", "Add Missing Imports" },
          S = { "<cmd>VtsExec source_actions<CR>", "Source Actions" },
        },
      },
      x = {
        ["<Leader>sa"] = {
          desc = "Add new snippet",
          function() require("scissors").addNewSnippet() end,
        },
        -- Don't yank when pasting over something
        p = { '"_dP', desc = "Paste without yanking" },
      },
    },
  },
}
