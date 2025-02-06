local M = {}

function M.config()
  print("Codium config being loaded")
  require("codeium").setup({
    enable_cmp_source = true,
  })
end

return M

