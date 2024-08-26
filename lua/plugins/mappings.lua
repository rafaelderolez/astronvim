-- AstroCore provides a central place to modify mappings set up as well as which-key menu titles
---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    mappings = {
      n = {
        -- Buffers
        ["]b"] = false,
        ["[b"] = false,
        L = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
        H = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },
      },
      x = {
        -- Don't yank when pasting over something
        p = { '"_dP', desc = "Paste without yanking" },
      },
    },
  },
}
