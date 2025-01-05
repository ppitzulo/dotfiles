-- local autocmd = vim.api.nvim_create_autocmd
require("custom.clipboard")
require("custom.configs.cmp")

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
--
--


-- vim.api.nvim_create_autocmd("BufRead", {
--     pattern = vim.fn.expand("/home/hidenori/.local/share/nvim/leetcode/*"),
--     callback = function()
--         vim.b.copilot_enabled = false
--     end,
-- })
--
