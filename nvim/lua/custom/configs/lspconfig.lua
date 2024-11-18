local general_on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

local servers = { "html", "cssls", "ts_ls", "clangd", "pyright", "tailwindcss", "emmet_language_server" }

capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.offsetEncoding = {"utf-16"}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = general_on_attach,
    capabilities = capabilities,
  }
end
