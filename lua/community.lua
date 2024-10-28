-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",

  -- Completion plugins
  -- { import = "astrocommunity.completion.copilot-lua" },

  -- Colorscheme plugins
  { import = "astrocommunity.color.nvim-highlight-colors" },
  { import = "astrocommunity.colorscheme.neofusion-nvim" },

  -- Diagnostics plugins
  { import = "astrocommunity.diagnostics.trouble-nvim" }, -- bottom panel diagnostics
  { import = "astrocommunity.diagnostics.error-lens-nvim" }, -- enhanced visual diagnostic display for Neovim

  -- Editing support plugins
  { import = "astrocommunity.editing-support.dial-nvim" }, -- (de|in)crement, toggles,
  { import = "astrocommunity.editing-support.neogen" }, -- annotation generator
  { import = "astrocommunity.editing-support.cutlass-nvim" },
  -- { import = "astrocommunity.editing-support.nvim-treesitter-context" },
  { import = "astrocommunity.editing-support.nvim-devdocs" },

  { import = "astrocommunity.git.blame-nvim" },

  -- Keybinding
  { import = "astrocommunity.keybinding.nvcheatsheet-nvim" },

  -- Motion plugins
  { import = "astrocommunity.motion.mini-bracketed" }, -- moving around using []
  { import = "astrocommunity.motion.mini-move" }, -- moving selections
  { import = "astrocommunity.motion.mini-surround" }, -- surround actions
  { import = "astrocommunity.motion.flash-nvim" }, -- motion

  -- Language pack plugins
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.pack.toml" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.markdown-and-latex.glow-nvim" },

  -- LSP
  { import = "astrocommunity.lsp.ts-error-translator-nvim" },

  -- Project management plugins
  { import = "astrocommunity.search.grug-far-nvim" }, -- find & replace

  -- Recipes
  { import = "astrocommunity.recipes.vscode-icons" },
  { import = "astrocommunity.recipes.telescope-lsp-mappings" },

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
  { "ellisonleao/glow.nvim", opts = {} },
  { "max397574/better-escape.nvim", enabled = false },
}
