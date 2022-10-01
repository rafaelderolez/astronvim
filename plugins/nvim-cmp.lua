local cmp = require "cmp"

-- cmp.setup.cmdline("/", {
--  mapping = cmp.mapping.preset.cmdline(),
--  sources = {
--    { name = "buffer" },
--  },
-- )
-- 
-- cmp.setup.cmdline(":", {
--  sources = {
--    { name = "cmdline" },
--  },
-- )

return {
  sources = {
    { name = "copilot", max_item_count = 3 },
  },
}
