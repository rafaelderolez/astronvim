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
  -- lualine = require "user.plugins.lualine",
  -- colorizer = require "user.plugins.colorizer",
  -- notify = require "user.plugins.notify",
  -- symbols_outline = require "user.plugins.symbols-outline",
  -- telescope = require "user.plugins.telescope",
}
