return {
  register = {
    n = {
      ["<leader>"] = {
        f = {
          p = { "<cmd>Telescope projects<CR>", "Telescope Projects" },
        },
        p = {
          r = { "<cmd>AstroReload<cr>", "AstroNvim Reload" },
        },
        r = {
          name = "Find & Replace",
          ["r"] = { "<cmd>lua require('spectre').open()<CR>", "Open Spectre" },
          ["w"] = { "<cmd>lua require('spectre').open_visual({select_word=true})<CR>", "Replace selected word" },
          ["v"] = { "<cmd>lua require('spectre').open_visual()<CR>", "Visual" },
          ["f"] = { "<cmd>lua require('spectre').open_file_search()<CR>", "File search" },
        },
      },
    },
  },
}
