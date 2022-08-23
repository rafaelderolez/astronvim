local status_ok, null_ls = pcall(require, "null-ls")

local formatting = null_ls.builtins.formatting

-- Check supported linters
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics

-- Check supported code_actions
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/code_actions
local codeActions = null_ls.builtins.code_actions

local hasPrettierConfig = function(utils)
  return utils.root_has_file {
    ".prettierrc",
    ".prettierrc.json",
    ".prettierrc.yml",
    ".prettierrc.yaml",
    ".prettierrc.json5",
    ".prettierrc.js",
    ".prettierrc.cjs",
    "prettier.config.js",
    "prettier.config.cjs",
  }
end

local hasEslintConfig = function(utils)
  return utils.root_has_file {
    ".eslintrc.js",
    ".eslintrc.cjs",
    ".eslintrc.yaml",
    ".eslintrc.yml",
    ".eslintrc.json",
  }
end

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

      formatting.eslint_d.with { prefer_local = "node_modules/.bin", condition = hasEslintConfig },

      formatting.prettierd.with {
        prefer_local = "node_modules/.bin",
        condition = hasPrettierConfig,
      },

      -- Set a linter
      diagnostics.eslint_d.with { prefer_local = "node_modules/.bin", condition = hasEslintConfig },

      -- Set code actions
      codeActions.eslint_d.with { prefer_local = "node_modules/.bin", condition = hasEslintConfig },
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
