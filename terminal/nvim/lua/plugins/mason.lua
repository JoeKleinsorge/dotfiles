local M = {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    "williamboman/mason.nvim",
    "nvim-lua/plenary.nvim",
  },
}

M.servers = {
  "lua_ls",
  "cssls",
  "html",
  "pyright",
  "bashls",
  "jsonls",
  "yamlls",
  "marksman",
}

function M.config()
  require("mason").setup {}
  require("mason-lspconfig").setup {
    ensure_installed = M.servers,
  }
end

return M
