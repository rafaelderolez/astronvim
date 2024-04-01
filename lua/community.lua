-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",

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
  { import = "astrocommunity.pack.toml" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.yaml" },

  -- LSP
  { import = "astrocommunity.lsp.ts-error-translator-nvim" },

  -- Project management plugins
  { import = "astrocommunity.project.nvim-spectre" }, -- find & replace

  -- Syntax plugins
  { import = "astrocommunity.syntax.vim-cool" }, -- disable search highlighting

  -- Utility plugins
  { import = "astrocommunity.utility.noice-nvim" }, -- UI for messages, cmdline and the popupmenu.

  -- Settings
  {
    "lukas-reineke/indent-blankline.nvim",
    enabled = false,
  },
  {
    "lewis6991/gitsigns.nvim",
    enabled = false,
  },
  {
    "pmizio/typescript-tools.nvim",
    dependencies = {
      "AstroNvim/astrolsp",
    },
    opts = {
      settings = {
        expose_as_code_action = "all",
      },
    },
  },
  {
    "gbprod/cutlass.nvim",
    opts = {
      cut_key = "x",
      override_del = true,
      exclude = {},
      registers = {
        select = "_",
        delete = "_",
        change = "_",
      },
    },
  },
}
