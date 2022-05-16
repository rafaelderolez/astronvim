return function()
  local map = vim.keymap.set
  local set = vim.opt
  -- Set options
  set.relativenumber = true

  -- Set key bindings
  map("n", "<C-s>", ":w!<CR>")

  -- Set autocommands
  vim.api.nvim_create_augroup("packer_conf", {})
  vim.api.nvim_create_autocmd("BufWritePost", {
    desc = "Sync packer after modifying plugins.lua",
    group = "packer_conf",
    pattern = "plugins.lua",
    command = "source <afile> | PackerSync",
  })

  -- Set up custom filetypes
  vim.filetype.add {
    extension = {
      js = "javascriptreact",
    },
  }

  -- vim.keymap.del("t", "<esc>")
  -- vim.keymap.del("t", "jk")
end
