local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
-- if you just want default config for the servers then put them in a table
local servers = {
  "html",
  "cssls",
  -- "tsserver",
  "clangd",
  -- "eslint",
  "jdtls",
  "astro",
  "gopls",
  "marksman",
  "emmet_ls",
  "yamlls",
  "jsonls",
  "dockerls",
  "lua_ls",
  "vuels",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- 
-- lspconfig.pyright.setup { blabla}
