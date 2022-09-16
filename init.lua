-- Colorscheme
local colorscheme = "default_theme"
local theme_installed, _ = pcall(require, "catppuccin")
if theme_installed then colorscheme = "catppuccin" end

local config = {

  updater = require "user.core.updater",

  -- Set colorscheme
  colorscheme = colorscheme,

  -- Default theme configuration
  default_theme = require "user.theme",

  -- Disable AstroNvim ui features
  ui = require "user.core.ui",

  -- Configure plugins
  plugins = require "user.plugins.plugins",

  -- Add paths for including more VS Code style snippets in luasnip
  luasnip = require "user.plugins.luasnip",

  -- Modify which-key registration
  ["which-key"] = require "user.plugins.which-key",

  -- Extend LSP configuration
  lsp = require "user.plugins.lsp",

  -- Diagnostics configuration (for vim.diagnostics.config({}))
  diagnostics = require "user.core.diagnostics",

  -- This function is run last
  -- good place to configure mappings and vim options
  polish = require "user.core.polish",

  -- Vim options
  options = require "user.core.options",

  -- Alpha Dashboard Header
  header = require "user.plugins.dashboard-header",
}

return config
