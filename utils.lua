M = {}

M.search_diagnostic = function()
  local line = vim.fn.line "." - 1
  local bufnr = vim.api.nvim_win_get_buf(0) -- 0 = current buffer
  local diags = vim.diagnostic.get(bufnr, { lnum = line, severity = { min = vim.diagnostic.severity.HINT } })
  if #diags == 0 then return print "No diagnostics found" end

  local diag = diags[1]
  local lines = vim.split(diag.message, "\n")
  local message = lines[1]
  local filetype = vim.bo.filetype

  vim.cmd.OpenBrowserSearch { "-google", filetype .. " " .. message }
end

return M
