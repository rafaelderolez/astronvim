if true then return {} end -- REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Example customization of mason plugins
---@type LazySpec
return {
  -- use mason-lspconfig to configure LSP installations
  { "williamboman/mason.nvim", opts = { PATH = "append", ui = { border = "single" } } },
  -- {
  --   "williamboman/mason-lspconfig.nvim",
  --   -- overrides `require("mason-lspconfig").setup(...)`
  --   opts = function(_, opts)
  --     -- add more things to the ensure_installed table protecting against community packs modifying it
  --     opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
  --       -- "lua_ls",
  --     })
  --   end,
  -- },
  -- -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, { "biome" })

      opts.handlers.biome = function()
        local null_ls = require "null-ls"
        local has_biome = function(util) return util.root_has_file "biome.json" end
        null_ls.register(null_ls.builtins.formatting.biome.with {
          condition = has_biome,
          args = {
            "check",
            "--apply-unsafe",
            "--formatter-enabled=true",
            "--organize-imports-enabled=true",
            "--skip-errors",
            "$FILENAME",
          },
        })
      end
    end,
  },
  -- {
  --   "jay-babu/mason-nvim-dap.nvim",
  --   -- overrides `require("mason-nvim-dap").setup(...)`
  --   opts = function(_, opts)
  --     -- add more things to the ensure_installed table protecting against community packs modifying it
  --     opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
  --       -- "python",
  --     })
  --   end,
  -- },
}
