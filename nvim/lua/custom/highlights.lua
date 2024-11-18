-- To find any highlight groups: "<cmd> Telescope highlights"
-- Each highlight group can take a table with variables fg, bg, bold, italic, etc
-- base30 variable names can also be used as colors

local M = {}

-- Function to get the color of a highlight group
local function get_hl(name)
  local hl = vim.api.nvim_get_hl_by_name(name, true)
  return { fg = string.format("#%06x", hl.foreground or 0), bg = string.format("#%06x", hl.background or 0) }
end

---@type Base46HLGroupsList
M.override = {
  Comment = {
    italic = true,
  },
  -- Normal = { bg = "NONE" },
  -- NormalNC = { bg = "NONE" },
  -- TabLine = { bg = "NONE" },
  -- TabLineFill = { bg = "NONE" },
  -- TabLineSel = { bg = "NONE" },
  -- LineNr = {
  --   bg = get_hl("Normal").bg,
  --   fg = get_hl("LineNr").fg,
  -- },
  -- CursorLineNr = {
  --   bg = get_hl("Normal").bg,
  --   fg = get_hl("CursorLineNr").fg,
  -- },
  Normal = {
    bg = "none",
  },
}

---@type HLTable
M.add = {
  NvimTreeOpenedFolderName = { fg = "green", bold = true },
}

return M
