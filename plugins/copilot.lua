-- Require and call setup functions somewhere in your init.lua
require("copilot").setup {
  cmp = {
    enabled = false, -- no need for cmp
  },
}

require("copilot-client").setup {
  mapping = {
    accept = "<CR>",
    -- Next and previos suggestions to be added
    -- Check if implemented by author: https://github.com/samodostal/copilot-client.lua/blob/main/lua/copilot-client/config.lua
    --[[ suggest_next = "<C-j>", ]]
    --[[ suggest_prev = "<C-k>", ]]
  },
}

-- Create a keymap that triggers the suggestion. To accept suggestion press <CR> as set in the setup.
vim.api.nvim_set_keymap(
  "i",
  "<C-c>",
  '<cmd>lua require("copilot-client").suggest()<CR>',
  { noremap = true, silent = true }
)
