return {
  "vuki656/package-info.nvim",
  dependencies = "MunifTanjim/nui.nvim",
  ft = "json",
  opts = {
    package_manager = "npm",
  },
  config = function(opts)
    require("package-info").setup(opts)

    vim.api.nvim_create_autocmd({ "BufEnter" }, {
      pattern = { "package.json" },
      group = vim.api.nvim_create_augroup("package-info", { clear = true }),
      callback = function(event)
        local which_key = require "which-key"
        which_key.register {
          ["<Leader>n"] = "NPM",
        }

        local pi = require "package-info"

        local function create_keymap(mode, key, func, desc)
          vim.keymap.set(mode, key, func, { buffer = event.buf, desc = desc })
        end

        create_keymap("n", "<Leader>nc", pi.change_version, "Change version")
        create_keymap("n", "<Leader>nd", pi.delete, "Delete dependency")
        create_keymap("n", "<Leader>ni", pi.install, "Install dependency")
        create_keymap("n", "<Leader>nu", pi.update, "Update dependency")
        create_keymap("n", "<Leader>nt", pi.toggle, "Toggle")
      end,
    })
  end,
}
