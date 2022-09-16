return {
  method = "getCompletionsCycling",
  force_autofmt = true,
  formatters = {
    label = require("copilot_cmp.format").format_label_text,
    insert_text = require("copilot_cmp.format").format_label_text,
    preview = require("copilot_cmp.format").deindent,
  },
}
