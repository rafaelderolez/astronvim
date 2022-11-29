local status_ok, null_ls = pcall(require, "null-ls")

local formatting = null_ls.builtins.formatting

-- Check supported linters
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
-- local diagnostics = null_ls.builtins.diagnostics

-- Check supported code_actions
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/code_actions
local codeActions = null_ls.builtins.code_actions

-- Formatting and linting
-- https://github.com/jose-elias-alvarez/null-ls.nvim

-- Check supported formatters
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting

if status_ok then return {
  debug = false,
  sources = {
    formatting.stylua,
    codeActions.eslint_d,
  },
} end
