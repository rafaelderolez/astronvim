local status_ok, null_ls = pcall(require, "null-ls")

local formatting = null_ls.builtins.formatting

-- Check supported linters
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics

-- Check supported code_actions
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/code_actions
local codeActions = null_ls.builtins.code_actions

if status_ok then
  return {
    -- Formatting and linting
    -- https://github.com/jose-elias-alvarez/null-ls.nvim

    -- Check supported formatters
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting

    debug = true,
    sources = {
      -- Set a formatter
      formatting.stylua,
      -- formatting.prettier,
      formatting.eslint_d,

      -- Set a linter
      diagnostics.eslint_d,

      -- Set code actions
      codeActions.eslint_d,
    },
    -- NOTE: You can remove this on attach function to disable format on save
    on_attach = function(client)
      if client.supports_method "textDocument/formatting" then
        vim.api.nvim_create_autocmd("BufWritePre", {
          desc = "Auto format before save",
          pattern = "<buffer>",
          callback = function()
            -- neovim 0.8
            -- vim.lsp.buf.format()

            -- neovim 0.7
            vim.lsp.buf.formatting_sync()
          end,
        })
      end
    end,
  }
end
