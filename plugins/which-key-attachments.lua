local wk = require "which-key"

local function attach_npm(bufnr)
  print "register package-info maps"
  wk.register({
    n = {
      name = "NPM",
      c = { '<cmd>lua require("package-info").change_version()<CR>', "change version" },
      d = { '<cmd>lua require("package-info").delete()<CR>', "delete package" },
      h = { "<cmd>lua require('package-info').hide()<CR>", "hide" },
      i = { '<cmd>lua require("package-info").install()<CR>', "install new package" },
      r = { '<cmd>lua require("package-info").reinstall()<CR>', "reinstall dependencies" },
      s = { '<cmd>lua require("package-info").show()<CR>', "show" },
      u = { '<cmd>lua require("package-info").update()<CR>', "update package" },
    },
  }, {
    buffer = bufnr,
    mode = "n", -- NORMAL mode
    prefix = "<leader>",
    silent = true, -- use `silent` when creating keymaps
    noremap = true, -- use `noremap` when creating keymaps
    nowait = false, -- use `nowait` when creating keymaps
  })
end

return {
  attach_npm = attach_npm,
}
