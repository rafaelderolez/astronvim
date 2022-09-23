return function()
  local map = vim.keymap.set

  -- Set key bindings
  map("n", "<C-s>", ":w!<CR>")
  map("n", "<esc>", ":noh<CR>")

  -- Set autocommands
  vim.api.nvim_create_augroup("telescope", {})

  vim.api.nvim_create_autocmd("VimEnter,ColorScheme", {
    desc = "Load telescope theme",
    group = "telescope",
    pattern = "*",
    command = "lua require('user.theme').telescope_theme()",
  })

  vim.api.nvim_create_autocmd("BufWritePre", {
    desc = "Fix all fixable eslint problems before save",
    pattern = { "*.tsx", "*.ts", "*.jsx", "*.js" },
    command = "silent! EslintFixAll",
  })

  vim.api.nvim_create_augroup("packer_conf", {})
  vim.api.nvim_create_autocmd("BufWritePost", {
    desc = "Sync packer after modifying plugins.lua",
    group = "packer_conf",
    pattern = "plugins.lua",
    command = "source <afile> | PackerSync",
  })

  vim.api.nvim_create_autocmd("BufWinEnter", {
    desc = "Disable comment continuation",
    command = "set formatoptions-=cro",
  })

  vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight on yank",
    callback = function() vim.highlight.on_yank { higroup = "IncSearch", timeout = 200 } end,
  })

  vim.keymap.del("t", "<esc>")
  vim.keymap.del("t", "jk")

  -- Don't show me a million diagnostics when I'm still typing
  vim.diagnostic.config {
    update_in_insert = false,
  }
end
