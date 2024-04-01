local dashboard = require "alpha.themes.dashboard"

local doSomething = {
  [[██████╗  ██████╗ ███████╗    ██╗███████╗████████╗███████╗]],
  [[██╔══██╗██╔═══██╗██╔════╝    ██║██╔════╝╚══██╔══╝██╔════╝]],
  [[██║  ██║██║   ██║█████╗      ██║█████╗     ██║   ███████╗]],
  [[██║  ██║██║   ██║██╔══╝      ██║██╔══╝     ██║   ╚════██║]],
  [[██████╔╝╚██████╔╝███████╗    ██║███████╗   ██║   ███████║]],
  [[╚═════╝  ╚═════╝ ╚══════╝    ╚═╝╚══════╝   ╚═╝   ╚══════╝]],
}

---@type LazySpec
local M = {
  "goolord/alpha-nvim",
  enabled = true,
  dependencies = { "nvim-tree/nvim-web-devicons" },
  event = "VimEnter",
}

function M.config()
  local theme = require "alpha.themes.theta"
  local path_ok = pcall(require, "plenary.path")
  if not path_ok then return end

  math.randomseed(os.time())

  -- Header
  local function apply_gradient_hl(text)
    local gradient = require("utils").create_gradient("#DCA561", "#658594", #text)

    local lines = {}
    for i, line in ipairs(text) do
      local tbl = {
        type = "text",
        val = line,
        opts = {
          hl = "HeaderGradient" .. i,
          shrink_margin = false,
          position = "center",
        },
      }
      table.insert(lines, tbl)

      -- create hl group
      vim.api.nvim_set_hl(0, "HeaderGradient" .. i, { fg = gradient[i] })
    end

    return {
      type = "group",
      val = lines,
      opts = { position = "center" },
    }
  end

  local function get_header()
    local header_text = doSomething
    return apply_gradient_hl(header_text)
  end

  -- Commands
  local commands = {
    type = "group",
    val = {
      dashboard.button("f", "  Find File", "<cmd>Telescope find_files<CR>"),
      dashboard.button("o", "󰈙  Recents", "<cmd>Telescope oldfiles<CR>"),
      dashboard.button("w", "󰈭  Find Word", "<cmd>Telescope live_grep<CR>"),
    },
    position = "left",
  }

  -- Links / tools
  local links = {
    type = "group",
    val = {
      dashboard.button("l", "󰒲 Lazy", "<cmd>Lazy<CR>"),
      dashboard.button("m", "󰺾 Mason", "<cmd>Mason<CR>"),
    },
    position = "center",
  }

  -- MRU
  local function get_mru(max_shown)
    local tbl = {
      { type = "text", val = "Recent Files", opts = { hl = "SpecialComment", position = "center" } },
    }

    local mru_list = theme.mru(1, "", max_shown)
    for _, file in ipairs(mru_list.val) do
      table.insert(tbl, file)
    end

    return { type = "group", val = tbl, opts = { position = "center" } }
  end

  -- Layout
  theme.config.layout = {
    { type = "padding", val = 6 },
    get_header(),
    { type = "padding", val = 2 },
    commands,
    -- { type = "padding", val = 1 },
    -- get_mru(7),
    { type = "padding", val = 1 },
    links,
  }

  require("alpha").setup(theme.config)
end

return M
