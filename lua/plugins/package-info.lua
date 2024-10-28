-- Does't work with mono repos
return {
  "vuki656/package-info.nvim",
  dependencies = { "MunifTanjim/nui.nvim" },
  event = "BufRead package.json",
  opts = {
    -- autostart = true, -- Whether to autostart when `package.json` is opened
    -- hide_up_to_date = true, -- It hides up to date versions when displaying virtual text
    -- hide_unstable_versions = false, -- It hides unstable versions from version list e.g next-11.1.3-canary3
    -- package_manager = "pnpm", -- "npm", "yarn", "pnpm"
  },
  -- {
  --   "AstroNvim/astrocore",
  --   opts = function(_, opts)
  --     vim.api.nvim_create_autocmd({ "BufEnter" }, {
  --       pattern = { "package.json" },
  --       group = vim.api.nvim_create_augroup("package-info", { clear = true }),
  --       callback = function()
  --         local maps = opts.mappings
  --         local prefix = "<Leader>n"
  --         maps.n[prefix] = { desc = "Package Info" }
  --
  --         maps.n[prefix .. "t"] = { "<cmd>PackageInfoToggle<CR>", desc = "Toggle" }
  --         maps.n[prefix .. "u"] = { "<cmd>PackageInfoUpdate<CR>", desc = "Update" }
  --         maps.n[prefix .. "i"] = { "<cmd>PackageInfoInstall<CR>", desc = "Install" }
  --         maps.n[prefix .. "d"] = { "<cmd>PackageInfoDelete<CR>", desc = "Delete" }
  --         maps.n[prefix .. "c"] = { "<cmd>PackageInfoChangeVersion<CR>", desc = "Change Version" }
  --       end,
  --     })
  --   end,
  -- },
}
