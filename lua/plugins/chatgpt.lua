local model = "gpt-4-1106-preview"

return {
  "jackMort/ChatGPT.nvim",
  event = "VeryLazy",
  config = function()
    require("chatgpt").setup {
      api_key_cmd = "op read op://Private/OpenAI/api_key --no-newline",
      openai_params = {
        model = model,
      },
      openai_edit_params = {
        model = model,
      },
    }
  end,
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
}
