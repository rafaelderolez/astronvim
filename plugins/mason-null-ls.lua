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
}
