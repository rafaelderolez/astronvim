return {
  highlight_ahead_of_time = true,
  highlight_unlabeled = true,
  case_sensitive = false,

  -- Leaving the appropriate list empty effectively disables "smart" mode,
  -- and forces auto-jump to be on or off.
  -- safe_labels = { . . . },
  -- labels = { . . . },

  -- These keys are captured directly by the plugin at runtime.
  special_keys = {
    repeat_search = "<enter>",
    next_match = "<enter>",
    prev_match = "<tab>",
    next_group = "<space>",
    prev_group = "<tab>",
    eol = "<space>",
  },
}
