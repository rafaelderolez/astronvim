return {
  formatting = {
    timeout_ms = 2000,
    disabled = { "tsserver" },
  },
  skip_setup = { "tsserver" },
  ["server-settings"] = {
    tsserver = {
      settings = {
        typescript = {
          importModuleSpecifier = "non-relative",
        },
      },
    },
  },
}
