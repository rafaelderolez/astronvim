return {
  {
    "catppuccin/nvim",
    as = "catppuccin",
    config = function()
      require("catppuccin").setup {}
    end,
  },
  {
    "zbirenbaum/copilot.lua",
    event = "InsertEnter",
    config = function()
      vim.defer_fn(function()
        require("copilot").setup()
        vim.g.copilot_no_tab_map = true
        vim.g.copilot_assume_mapped = true
        vim.g.copilot_tab_fallback = ""
      end, 100)
    end,
  },
  {
    "zbirenbaum/copilot-cmp",
    requires = { "onsails/lspkind.nvim" },
    after = { "copilot.lua", "nvim-cmp" },
    module = "copilot_cmp",
    config = function()
      astronvim.add_user_cmp_source "copilot"
    end,
  },
  "windwp/nvim-spectre",
  {
    "nvim-treesitter/nvim-treesitter-context",
    config = function()
      require("treesitter-context").setup(require "user.plugins.treesitter-context")
    end,
  },
  {
    "jose-elias-alvarez/typescript.nvim",
    after = "nvim-lsp-installer",
    config = function()
      require("typescript").setup {
        debug = true,
        server = astronvim.lsp.server_settings "tsserver",
        capabilities = astronvim.lsp.capabilities,
        on_attach = astronvim.lsp.on_attach,
      }
    end,
  },
}
