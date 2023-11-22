local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
mason.setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
        },
    },
})
mason_lspconfig.setup({
  -- list of servers for mason to install
  ensure_installed = {
    'cssls',
    'lua_ls',
    'pyright',
    'java_language_server',
  },
  automatic_installation = true,
})
