require("mason").setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    }
  }
})

require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls" },
})

require("lspconfig").lua_ls.setup {}
require("lspconfig").rust_analyzer.setup {}
require("lspconfig").tsserver.setup {}
require("lspconfig").eslint.setup {
  on_attach = function(client, bufnr)
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = bufnr,
      command = "EslintFixAll",
    })
  end,
}
require("lspconfig").cmake.setup {}
require("lspconfig").dockerls.setup {}
require("lspconfig").docker_compose_language_service.setup {}
-- require("lspconfig").solc.setup {}
require("lspconfig").solidity_ls.setup {}
require("lspconfig").yamlls.setup {}
require("lspconfig").tailwindcss.setup {}
require("lspconfig").prismals.setup {}
require("lspconfig").html.setup {}
require("lspconfig").prismals.setup {}
require("lspconfig").intelephense.setup {}
require("lspconfig").solidity_ls_nomicfoundation.setup {}
require("lspconfig").vimls.setup {}
require("lspconfig").yamlls.setup {}
