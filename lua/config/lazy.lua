local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.g.astronvim_first_install = true -- lets AstroNvim know that this is an initial installation
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

require("lazy").setup {
  spec = {
    -- TODO: change `branch="v4"` to `version="^4"` on release
    { "AstroNvim/AstroNvim", branch = "v4", import = "astronvim.plugins" },

    -- TODO: remove `branch="v4"` on release
    { "AstroNvim/astrocommunity", branch = "v4" },

    -- Completion plugins
    { import = "astrocommunity.completion.copilot-lua" },

    -- Colorscheme plugins

    -- Diagnostics plugins
    { import = "astrocommunity.diagnostics.trouble-nvim" }, -- bottom panel diagnostics

    -- Editing support plugins
    { import = "astrocommunity.editing-support.dial-nvim" }, -- (de|in)crement, toggles,
    { import = "astrocommunity.editing-support.neogen" }, -- annotation generator
    { import = "astrocommunity.editing-support.cutlass-nvim" },

    -- Motion plugins
    { import = "astrocommunity.motion.mini-bracketed" }, -- moving around using []
    { import = "astrocommunity.motion.mini-move" }, -- moving selections
    { import = "astrocommunity.motion.mini-surround" }, -- surround actions
    { import = "astrocommunity.motion.flash-nvim" }, -- motion

    -- Language pack plugins
    { import = "astrocommunity.pack.lua" },
    { import = "astrocommunity.pack.markdown" },
    { import = "astrocommunity.pack.python" },
    { import = "astrocommunity.pack.tailwindcss" },
    { import = "astrocommunity.pack.typescript" },
    { import = "astrocommunity.pack.yaml" },

    -- Project management plugins
    { import = "astrocommunity.project.nvim-spectre" }, -- find & replace

    -- Syntax plugins
    { import = "astrocommunity.syntax.vim-cool" }, -- disable search highlighting

    -- Utility plugins
    { import = "astrocommunity.utility.noice-nvim" }, -- UI for messages, cmdline and the popupmenu.

    -- User plugins
    { import = "plugins" },
  },
  ui = {
    border = "single",
  },
  install = { colorscheme = { "tokyonight-nvim" } },
  performance = {
    rtp = {
      -- disable some rtp plugins, add more to your liking
      disabled_plugins = {
        "gzip",
        "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "zipPlugin",
      },
    },
  },
}
