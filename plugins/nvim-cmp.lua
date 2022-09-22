local cmp = require "cmp"

cmp.setup.cmdline("/", {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = "buffer" },
  },
})

return {
  source_priority = {
    copilot = 1000,
    nvim_lsp = 900,
    luasnip = 800,
    path = 700,
    buffer = false,
  },
  -- sources = {
  -- { name = "copilot", max_item_count = 5 },
  -- { name = "nvim_lsp", max_item_count = 5 },
  -- { name = "luasnip", max_item_count = 5 },
  -- { name = "path", max_item_count = 5 },
  -- },
}
