--- @type LazySpec
return {
  {
    "rcarriga/nvim-notify",
    opts = {
      render = "minimal",
      timeout = 1500,
    },
  },
  {
    "folke/noice.nvim",
    opts = {
      presets = { long_message_to_split = true, lsp_doc_border = true },
      lsp = {
        hover = {
          enabled = true,
          silent = true,
        },
        signature = {
          enabled = false,
        },
        progress = { enabled = false },
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true,
        },
      },
      routes = {
        -- send long messages to split
        { filter = { event = "msg_show", min_height = 20 }, view = "messages" },
        -- skip search_count messages instead of showing them as virtual text
        { filter = { event = "msg_show", kind = "search_count" }, opts = { skip = true } },
        -- skip save notifications
        { filter = { event = "msg_show", find = "%d+L,%s%d+B" }, opts = { skip = true } },
        -- skip change notifications
        { filter = { event = "msg_show", find = "^%d+ change" }, opts = { skip = true } },
        -- skip paste notifications
        { filter = { event = "msg_show", find = "^%d+ more line(s)" }, opts = { skip = true } },
        -- skip delete notifications
        { filter = { event = "msg_show", find = "^%d+ fewer line(s)" }, opts = { skip = true } },
        -- skip yank notifications
        { filter = { event = "msg_show", find = "^%d+ line(s) yanked" }, opts = { skip = true } },
      },
    },
  },
}
