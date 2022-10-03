local status_ok, null_ls = pcall(require, "null-ls")

local command_resolver = require "null-ls.helpers.command_resolver"
local formatting = null_ls.builtins.formatting

-- Check supported linters
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics

-- Check supported code_actions
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/code_actions
local codeActions = null_ls.builtins.code_actions

-- Formatting and linting
-- https://github.com/jose-elias-alvarez/null-ls.nvim

-- Check supported formatters
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting

if status_ok then
  return {
    debug = false,
    sources = {
      -- Formatting
      formatting.stylua,
      formatting.eslint_d.with {
        dynamic_command = command_resolver.from_node_modules(),
      },

      -- formatting.prettierd.with {
      --   dynamic_command = command_resolver.from_node_modules(),
      --   env = {
      --     PRETTIERD_LOCAL_PRETTIER_ONLY = true,
      --   },
      -- },

      -- Diagnostics
      diagnostics.eslint_d.with {
        dynamic_command = command_resolver.from_node_modules(),
      },

      codeActions.eslint_d.with {
        dynamic_command = command_resolver.from_node_modules(),
      },
    },
  }
end
