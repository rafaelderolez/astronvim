local lspkind_ok, lspkind = pcall(require, "lspkind")
local cmp_ok, cmp = pcall(require, "cmp")
if cmp_ok and lspkind_ok then
  return {
    source_priority = {
      copilot = 1000,
      nvim_lsp = 900,
      luasnip = 750,
      buffer = 500,
      path = 250,
    },
    window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
    },
    formatting = {
      fields = { "kind", "abbr", "menu" },

      format = function(entry, vim_item)
        if entry.source.name == "copilot" then
          vim_item.kind = ""
          vim_item.kind_hl_group = "CmpItemKindCopilot"
          return vim_item
        end
        return lspkind.cmp_format { with_text = false, maxwidth = 50 }(entry, vim_item)
      end,
    },
  }
else
  return {}
end
