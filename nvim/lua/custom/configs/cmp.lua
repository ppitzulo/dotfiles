local M = {}

M.setup = function()
  local cmp = require "cmp"

  cmp.setup({
    sources = {
      { name = "codeium"}
    }
    -- sources = cmp.config.sources({
    --   { name = "codeium" },
    --   -- Add your other sources here
    -- }),
  })
end

return M

