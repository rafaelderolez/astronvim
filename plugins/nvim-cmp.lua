return {
  source_priority = {
    copilot = 1250,
    nvim_lsp = 1000,
    luasnip = 750,
    buffer = 500,
    path = 250,
  },
  formatting = {
    format = astronvim.lspkind.cmp_format {
      mode = "symbol",
      max_width = 50,
      symbol_map = { Copilot = "" },
    },
  },
}
