---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    features = {
      codelens = true,
      max_file = { size = 1024 * 100, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
      autopairs = true, -- enable autopairs at start
      cmp = true, -- enable completion at start
      highlighturl = true, -- highlight URLs at start
      notifications = true, -- enable notifications at start
    },
    diagnostics = {
      update_in_insert = false,
    },
    options = {
      opt = {
        backspace = vim.list_extend(vim.opt.backspace:get(), { "nostop" }), -- don't stop backspace at insert
        breakindent = true, -- wrap indent to match  line start
        clipboard = "unnamedplus", -- connection to the system clipboard
        cmdheight = 0, -- hide command line unless needed
        completeopt = { "menu", "menuone", "noselect" }, -- Options for insert mode completion
        copyindent = true, -- copy the previous indentation on autoindenting
        cursorline = true, -- highlight the text line of the cursor
        diffopt = vim.list_extend(vim.opt.diffopt:get(), { "algorithm:histogram", "linematch:60" }), -- enable linematch diff algorithm
        expandtab = true, -- enable the use of space in tab
        fileencoding = "utf-8", -- file content encoding for the buffer
        fillchars = { eob = " " }, -- disable `~` on nonexistent lines
        foldcolumn = "1", -- show foldcolumn
        foldenable = true, -- enable fold for nvim-ufo
        foldlevel = 99, -- set high foldlevel for nvim-ufo
        foldlevelstart = 99, -- start with all code unfolded
        history = 100, -- number of commands to remember in a history table
        ignorecase = true, -- case insensitive searching
        infercase = true, -- infer cases in keyword completion
        laststatus = 3, -- global statusline
        linebreak = true, -- wrap lines at 'breakat'
        mouse = "a", -- enable mouse support
        number = true, -- show numberline
        preserveindent = true, -- preserve indent structure as much as possible
        pumheight = 10, -- height of the pop up menu
        relativenumber = true, -- show relative numberline
        shiftwidth = 2, -- number of space inserted for indentation
        shortmess = vim.tbl_deep_extend("force", vim.opt.shortmess:get(), { s = true, I = true }), -- disable search count wrap and startup messages
        showmode = false, -- disable showing modes in command line
        showtabline = 2, -- always display tabline
        signcolumn = "yes", -- always show the sign column
        smartcase = true, -- case sensitive searching
        splitbelow = true, -- splitting a new window below the current one
        splitright = true, -- splitting a new window at the right of the current one
        tabstop = 2, -- number of space in a tab
        termguicolors = true, -- enable 24-bit RGB color in the TUI
        timeoutlen = 500, -- shorten key timeout length a little bit for which-key
        title = true, -- set terminal title to the filename and path
        undofile = true, -- enable persistent undo
        updatetime = 300, -- length of time to wait before triggering the plugin
        viewoptions = vim.tbl_filter(function(val) return val ~= "curdir" end, vim.opt.viewoptions:get()),
        virtualedit = "block", -- allow going past end of line in visual block mode
        wrap = true, -- disable wrapping of lines longer than the width of window
        writebackup = false, -- disable making a backup before overwriting a file
      },
      g = {
        markdown_recommended_style = 0,
        nonels_supress_issue58 = true,
      },
    },
    autocmds = {
      disabled_comment_continuation = {
        {
          event = "FileType",
          desc = "Disable comment continuation",
          command = "set formatoptions-=cro",
        },
      },
      auto_spell = {
        {
          event = "FileType",
          desc = "Enable wrap and spell for text like documents",
          pattern = { "gitcommit", "markdown", "text", "plaintex" },
          callback = function()
            vim.opt_local.wrap = true
            vim.opt_local.spell = true
          end,
        },
      },
      lf_term_enter = {
        {
          event = "User",
          pattern = "LfTermEnter",
          desc = "Set keymap for LfTermEnter",
          callback = function(a) vim.api.nvim_buf_set_keymap(a.buf, "t", "q", "q", { nowait = true }) end,
        },
      },
    },
  },
}
