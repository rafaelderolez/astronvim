return function()
  local map = vim.keymap.set
  local set = vim.opt
  -- Set options
  set.relativenumber = true
  set.wrap = true

  -- Set key bindings
  map("n", "<C-s>", ":w!<CR>")
  map("n", "<esc>", ":noh<CR>")

  -- Set autocommands
  vim.api.nvim_create_augroup("packer_conf", {})
  vim.api.nvim_create_autocmd("BufWritePost", {
    desc = "Sync packer after modifying plugins.lua",
    group = "packer_conf",
    pattern = "plugins.lua",
    command = "source <afile> | PackerSync",
  })

  vim.api.nvim_create_autocmd("BufWritePre", {
    desc = "EslintFixAll before save",
    pattern = "*.tsx,*.ts,*.jsx,*.js",
    command = "EslintFixAll",
  })

  vim.api.nvim_create_autocmd("BufWinEnter", {
    desc = "Disable comment continuation",
    command = "set formatoptions-=cro",
  })

  vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight on yank",
    callback = function() vim.highlight.on_yank { higroup = "IncSearch", timeout = 200 } end,
  })

  vim.api.nvim_create_autocmd("BufEnter", {
    desc = "Attach package-info which-key mappings",
    pattern = { "package.json" },
    callback = function() require("user.plugins.which-key-attachments").attach_npm(0) end,
  })

  -- Set up custom filetypes
  vim.filetype.add {
    extension = {
      js = "javascriptreact",
    },
  }

  vim.keymap.del("t", "<esc>")
  -- vim.keymap.del("t", "jk")
end
