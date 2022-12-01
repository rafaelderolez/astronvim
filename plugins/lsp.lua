return {
  formatting = {
    timeout_ms = 2000,
  },
  skip_setup = { "tsserver" },
  ["server-settings"] = {
    tsserver = {
      settings = {
        typescript = {
          importModuleSpecifier = true,
        },
      },
    },
  },
}
