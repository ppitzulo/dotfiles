-- local autocmd = vim.api.nvim_create_autocmd
require("custom.clipboard")

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
--
--


print("indieasdfoij")
vim.api.nvim_create_autocmd("BufRead", {
    pattern = vim.fn.expand("/home/hidenori/.local/share/nvim/leetcode/*"),
    callback = function()
        print("test")
        vim.b.copilot_enabled = false
    end,
})

