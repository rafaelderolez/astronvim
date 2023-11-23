-- if true then return {} end -- REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Example customization of Treesitter
return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    {
      "andymass/vim-matchup",
      init = function() vim.g.matchup_matchparen_deferred = 1 end,
    },
    "nvim-treesitter/nvim-treesitter-textobjects",
  },
  opts = function(_, opts)
    return require("astrocore").extend_tbl(opts, {
      -- add more things to the ensure_installed table protecting against community packs modifying it
      -- opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
      --   -- "lua"
      -- })

      autotag = { enable_close_on_slash = false },
      auto_install = vim.fn.executable "tree-sitter" == 1,
      indent = { enable = true },
      matchup = { enable = true },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<CR>",
          -- scope_incremental = "<CR>",
          node_incremental = "<TAB>",
          node_decremental = "<S-TAB>",
        },
      },
      textobjects = {
        select = {
          enable = true,
          lookahead = true,
          keymaps = {
            aA = "@attribute.outer",
            iA = "@attribute.inner",
            aB = "@block.outer",
            iB = "@block.inner",
            aD = "@conditional.outer",
            iD = "@conditional.inner",
            aF = "@function.outer",
            iF = "@function.inner",
            aL = "@loop.outer",
            iL = "@loop.inner",
            aP = "@parameter.outer",
            iP = "@parameter.inner",

            aS = "@statement.outer",
            iS = "@statement.outer",
            aN = "@number.inner",
            iN = "@number.inner",
            aC = "@comment.outer",
            iC = "@comment.outer",
          },
        },
        move = {
          enable = true,
          set_jumps = true,
          goto_next_start = {
            ["]b"] = { query = "@block.outer", desc = "Next block start" },
            ["]f"] = { query = "@function.outer", desc = "Next function start" },
            ["]p"] = { query = "@parameter.outer", desc = "Next parameter start" },
            ["]c"] = { query = "@comment.outer", desc = "Next comment start" },
          },
          goto_next_end = {
            ["]B"] = { query = "@block.outer", desc = "Next block end" },
            ["]F"] = { query = "@function.outer", desc = "Next function end" },
            ["]P"] = { query = "@parameter.outer", desc = "Next parameter end" },
            ["]C"] = { query = "@comment.outer", desc = "Next comment end" },
          },
          goto_previous_start = {
            ["[b"] = { query = "@block.outer", desc = "Previous block start" },
            ["[f"] = { query = "@function.outer", desc = "Previous function start" },
            ["[p"] = { query = "@parameter.outer", desc = "Previous parameter start" },
            ["[c"] = { query = "@comment.outer", desc = "Previous comment start" },
          },
          goto_previous_end = {
            ["[B"] = { query = "@block.outer", desc = "Previous block end" },
            ["[F"] = { query = "@function.outer", desc = "Previous function end" },
            ["[P"] = { query = "@parameter.outer", desc = "Previous parameter end" },
            ["[C"] = { query = "@comment.outer", desc = "Previous comment end" },
          },
        },
        swap = {
          enable = true,
          swap_next = {
            [">B"] = { query = "@block.outer", desc = "Swap next block" },
            [">F"] = { query = "@function.outer", desc = "Swap next function" },
            [">P"] = { query = "@parameter.inner", desc = "Swap next parameter" },
          },
          swap_previous = {
            ["<B"] = { query = "@block.outer", desc = "Swap previous block" },
            ["<F"] = { query = "@function.outer", desc = "Swap previous function" },
            ["<P"] = { query = "@parameter.inner", desc = "Swap previous parameter" },
          },
        },
        lsp_interop = {
          enable = true,
          border = "single",
          peek_definition_code = {
            ["<leader>lp"] = { query = "@function.outer", desc = "Peek function definition" },
          },
        },
      },
    })
  end,
}
