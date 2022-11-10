return {
  register = {
    n = {
      ["<leader>"] = {
        l = {
          l = { "<cmd>lua require('logsitter').log()<CR>", "Turbo Console Log" },
        },
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
        n = {
          name = "Package info",
          ["s"] = { "<cmd>lua require('package-info').show()<cr>", "Show info" },
          ["h"] = { "<cmd>lua require('package-info').hide()<cr>", "Hide info" },
          ["t"] = { "<cmd>lua require('package-info').toggle()<cr>", "Toggle info" },
          ["d"] = { "<cmd>lua require('package-info').delete()<cr>", "Delete" },
          ["c"] = { "<cmd>lua require('package-info').change_version()<cr>", "Change version" },
          ["i"] = { "<cmd>lua require('package-info').install()<cr>", "Install" },
        },
      },
    },
  },
}
