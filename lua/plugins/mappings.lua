-- if true then return {} end -- REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCore provides a central place to modify mappings set up as well as which-key menu titles
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    mappings = {
      -- first key is the mode
      n = {
        -- Refactoring
        ["<leader>r"] = { desc = " Refactoring" },

        -- Buffers
        ["]b"] = false,
        ["[b"] = false,
        ["<S-l>"] = {
          function() require("astrocore.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
          desc = "Next buffer",
        },
        ["<S-h>"] = {
          function() require("astrocore.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
          desc = "Previous buffer",
        },

        -- Telescope
        ["<leader>fe"] = { "<cmd>Telescope file_browser<cr>", desc = "File explorer" },
        ["<leader>fp"] = {
          function() require("telescope").extensions.projects.projects() end,
          desc = "Find projects",
        },
        ["<leader>fi"] = { "<cmd>Telescope import<cr>", desc = "Find imports" },

        -- Pretty pickers
        ["<leader>ff"] = {
          function() require("utils.telescope-pickers").prettyFilesPicker { picker = "find_files" } end,
          desc = "Files",
        },
        ["<leader>fo"] = {
          function() require("utils.telescope-pickers").prettyFilesPicker { picker = "oldfiles" } end,
          desc = "History",
        },
        ["<leader>fw"] = {
          function() require("utils.telescope-pickers").prettyGrepPicker { picker = "live_grep" } end,
          desc = "Word",
        },

        -- Easy Align
        ["ga"] = { "<Plug>(EasyAlign)", desc = "Easy Align" },

        ["<leader>lg"] = {
          "<cmd>lua require('logsitter').log()<cr>",
        },

        ["<leader>j"] = {
          name = "ChatGPT",
          c = { "<cmd>ChatGPT<CR>", desc = "ChatGPT" },
          e = { "<cmd>ChatGPTEditWithInstruction<CR>", "Edit with instruction", mode = { "n", "v" } },
          g = { "<cmd>ChatGPTRun grammar_correction<CR>", "Grammar Correction", mode = { "n", "v" } },
          t = { "<cmd>ChatGPTRun translate<CR>", "Translate", mode = { "n", "v" } },
          k = { "<cmd>ChatGPTRun keywords<CR>", "Keywords", mode = { "n", "v" } },
          d = { "<cmd>ChatGPTRun docstring<CR>", "Docstring", mode = { "n", "v" } },
          a = { "<cmd>ChatGPTRun add_tests<CR>", "Add Tests", mode = { "n", "v" } },
          o = { "<cmd>ChatGPTRun optimize_code<CR>", "Optimize Code", mode = { "n", "v" } },
          s = { "<cmd>ChatGPTRun summarize<CR>", "Summarize", mode = { "n", "v" } },
          f = { "<cmd>ChatGPTRun fix_bugs<CR>", "Fix Bugs", mode = { "n", "v" } },
          x = { "<cmd>ChatGPTRun explain_code<CR>", "Explain Code", mode = { "n", "v" } },
          r = { "<cmd>ChatGPTRun roxygen_edit<CR>", "Roxygen Edit", mode = { "n", "v" } },
          l = { "<cmd>ChatGPTRun code_readability_analysis<CR>", "Code Readability Analysis", mode = { "n", "v" } },
        },
      },
      t = {
        -- setting a mapping to false will disable it
        -- ["<esc>"] = false,
      },
    },
  },
}
