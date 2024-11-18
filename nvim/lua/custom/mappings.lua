---@type MappingsTable

local M = {}
M.general = {
  n = {
    ["<leader>a"] = { function() require("harpoon.mark").add_file() end, "Add file to Harpoon" },
    ["<leader>ll"] = { function() require("harpoon.ui").toggle_quick_menu() end, "Toggle Harpoon menu" },
    ["<leader>1"] = { function() require("harpoon.ui").nav_file(1) end, "Navigate to file 1" },
    ["<leader>2"] = { function() require("harpoon.ui").nav_file(2) end, "Navigate to file 2" },
    ["<leader>3"] = { function() require("harpoon.ui").nav_file(3) end, "Navigate to file 3" },
    ["<leader>4"] = { function() require("harpoon.ui").nav_file(4) end, "Navigate to file 4" },
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
  v = {
    [">"] = { ">gv", "indent"},
  },
}

return M

