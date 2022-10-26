return function()
  -- Set keybinds

  -- Move lines/selections up and down
  vim.cmd [[
    nnoremap <A-j> :m .+1<CR>==
    nnoremap <A-k> :m .-2<CR>==
    inoremap <A-j> <Esc>:m .+1<CR>==gi
    inoremap <A-k> <Esc>:m .-2<CR>==gi
    vnoremap <A-j> :m '>+1<CR>gv=gv
    vnoremap <A-k> :m '<-2<CR>gv=gv
  ]]

  -- Set autocommands
  vim.api.nvim_create_augroup("telescope", {})
  vim.api.nvim_create_autocmd("VimEnter,ColorScheme", {
    desc = "Load telescope theme",
    group = "telescope",
    pattern = "*",
    command = "lua require('user.theme').telescope_theme()",
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

  -- Don't show me a million diagnostics when I'm still typing
  vim.diagnostic.config {
    update_in_insert = false,
  }

  require("telescope").load_extension "projects"
end
