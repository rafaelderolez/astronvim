local lspConfigWindows = require "lspconfig.ui.windows"
local cos = require "codeactions-on-save"

lspConfigWindows.default_options.border = "single"

cos.register({ "*.ts", "*.tsx" }, { "source.organizeImports.biome" })

-- This file is automatically ran last in the setup process and is a good place to configure
-- augroups/autocommands and custom filetypes also this just pure lua so
-- anything that doesn't fit in the normal config locations above can go here

-- Set up custom filetypes
-- vim.filetype.add {
--   extension = {
--     foo = "fooscript",
--   },
--   filename = {
--     ["Foofile"] = "fooscript",
--   },
--   pattern = {
--     ["~/%.config/foo/.*"] = "fooscript",
--   },
-- }
