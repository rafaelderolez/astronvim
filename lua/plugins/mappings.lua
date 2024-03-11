-- AstroCore provides a central place to modify mappings set up as well as which-key menu titles
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
        L = {
          desc = "Next buffer",
          function() require("astrocore.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
        },
        H = {
          desc = "Previous buffer",
          function() require("astrocore.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
        },

        -- Telescope
        ["<leader>fi"] = { "<cmd>Telescope import<cr>", desc = "Find imports" },

        -- Pretty pickers
        ["<leader>ff"] = {
          desc = "Files",
          function() require("utils.telescope-pickers").prettyFilesPicker { picker = "find_files" } end,
        },
        ["<leader>fo"] = {
          desc = "History",
          function() require("utils.telescope-pickers").prettyFilesPicker { picker = "oldfiles" } end,
        },
        ["<leader>fw"] = {
          desc = "Word",
          function() require("utils.telescope-pickers").prettyGrepPicker { picker = "live_grep" } end,
        },

        -- Easy Align
        ["ga"] = { "<Plug>(EasyAlign)", desc = "Easy Align" },

        ["<leader>lg"] = {
          "<cmd>lua require('logsitter').log()<cr>",
        },

        ["<leader>j"] = {
          name = "ChatGPT",
          c = { "<cmd>ChatGPT<CR>", "ChatGPT" },
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
          l = { "<cmd>ChatGPTRun code_readability_analysis<CR>", "Code Readability Analysis", mode = { "n", "v" } },
        },

        -- Snippets
        ["<leader>sa"] = {
          desc = "Add new snippet",
          function() require("scissors").addNewSnippet() end,
        },
        ["<leader>se"] = {
          desc = "Edit snippets",
          function() require("scissors").editSnippet() end,
        },
      },
      x = {
        ["<leader>sa"] = {
          desc = "Add new snippet",
          function() require("scissors").addNewSnippet() end,
        },
      },
    },
  },
}
