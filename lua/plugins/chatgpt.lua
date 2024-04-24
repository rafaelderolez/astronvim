local openai_params = {
  model = "gpt-4-1106-preview",
  frequency_penalty = 0,
  presence_penalty = 0,
  max_tokens = 3000,
  temperature = 0,
  top_p = 1,
  n = 1,
}

---@type LazySpec
return {
  "jackMort/ChatGPT.nvim",
  cmd = { "ChatGPT", "ChatGPTActAs", "ChatGPTCompleteCode", "ChatGPTEditWithInstructions", "ChatGPTRun" },
  config = function()
    require("chatgpt").setup {
      api_key_cmd = "op read op://Private/OpenAI/api_key --no-newline",
      openai_params = openai_params,
      openai_edit_params = openai_params,
    }
  end,
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
}
