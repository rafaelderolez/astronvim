return {
  -- Add plugins, the packer syntax without the "use"
  init = require "user.plugins.init",

  -- All other entries override the setup() call for default plugins
  packer = {
    compile_path = vim.fn.stdpath "config" .. "/lua/packer_compiled.lua",
  },
  bufferline = require "user.plugins.bufferline",
  treesitter = require "user.plugins.treesitter",
  ["neo-tree"] = require "user.plugins.neo-tree",
  ["null-ls"] = require "user.plugins.null-ls",
  cinnamon = require "user.plugins.cinnamon",
  ["mason-lspconfig"] = require "user.plugins.mason-lspconfig",
  ["mason-tool-installer"] = require "user.plugins.mason-tool-installer",
  ["mason-null-ls"] = require "user.plugins.mason-null-ls",
  cmp = require "user.plugins.nvim-cmp",
  lspkind = require "user.plugins.lspkind",

  -- feline = require "user.plugins.feline",
  -- colorizer = require "user.plugins.colorizer",
  -- notify = require "user.plugins.notify",
  -- symbols_outline = require "user.plugins.symbols-outline",
  -- telescope = require "user.plugins.telescope",
}
