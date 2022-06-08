return {
  debug = true,
  server = astronvim.lsp.server_settings "tsserver",
  capabilities = astronvim.lsp.capabilities,
  on_attach = astronvim.lsp.on_attach,
}
