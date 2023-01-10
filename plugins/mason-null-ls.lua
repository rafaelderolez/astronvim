-- local null_ls = require "null-ls"
-- local b = null_ls.builtins

return {
  automatic_installation = true,
  automatic_setup = true,
  ensure_installed = {
    "actionlint",
    "eslint_d",
    "pylint",
    "stylua",
    "luacheck",
    "yamllint",
    "yamlfmt",
    "shfmt",
    "jq",
  },

  -- For eslint_d:
  eslint_d = function()
    require("null-ls").register(require("null-ls").builtins.diagnostics.eslint_d.with {
      condition = function(utils)
        return utils.root_has_file ".eslintrc.json"
            or utils.root_has_file ".eslintrc.js"
            or utils.root_has_file ".eslintrc.cjs"
            or utils.root_has_file ".eslintrc.yaml"
            or utils.root_has_file ".eslintrc.yml"
            or utils.root_has_file ".eslintrc"
            or utils.root_has_file ".eslintignore"
      end,
    })
  end,
}
