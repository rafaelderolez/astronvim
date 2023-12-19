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
    -- AstroCommunity: import any community modules here
    -- TODO: Remove branch v4 on release
    { "AstroNvim/astrocommunity", branch = "v4" },

    { import = "astrocommunity.completion.copilot-lua" },

    { import = "astrocommunity.colorscheme.tokyonight-nvim" },

    { import = "astrocommunity.diagnostics.trouble-nvim" }, -- bottom panel diagnostics

    { import = "astrocommunity.editing-support.dial-nvim" }, -- (de|in)crement, toggles,
    { import = "astrocommunity.editing-support.neogen" }, -- annotation generator

    -- { import = "astrocommunity.editing-support.zen-mode-nvim" },
    { import = "astrocommunity.editing-support.cutlass-nvim" },

    { import = "astrocommunity.motion.mini-bracketed" }, -- moving around using []
    { import = "astrocommunity.motion.mini-move" }, -- moving selections
    { import = "astrocommunity.motion.mini-surround" }, -- surround actions
    { import = "astrocommunity.motion.flash-nvim" }, -- motion

    -- { import = "astrocommunity.pack.astro" },
    { import = "astrocommunity.pack.lua" },
    { import = "astrocommunity.pack.markdown" },
    { import = "astrocommunity.pack.python" },
    { import = "astrocommunity.pack.tailwindcss" },
    { import = "astrocommunity.pack.typescript" },
    { import = "astrocommunity.pack.yaml" },

    { import = "astrocommunity.project.nvim-spectre" },

    { import = "astrocommunity.syntax.vim-cool" }, -- disable search highlighting

    { import = "astrocommunity.utility.noice-nvim" }, -- UI for messages, cmdline and the popupmenu.

    -- import/override with your plugins
    { import = "plugins" },
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
