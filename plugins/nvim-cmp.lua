-- modify here the priorities of default cmp sources
-- higher value == higher priority
-- The value can also be set to a boolean for disabling default sources:
-- false == disabled
-- true == 1000
--
--#region

return {
  source_priority = {
    copilot = 1250,
    nvim_lsp = 1000,
    luasnip = 750,
    buffer = 500,
    path = 250,
  },
}
