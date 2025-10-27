return {
  -- Mason core
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    config = true,
  },

  -- Mason <-> LSP bridge
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    opts = {
      ensure_installed = {
        "lua_ls",     -- Lua
        --"tsserver",   -- TypeScript / JavaScript
        "pyright",    -- Python
        "csharp_ls",  -- C#
      },
    },
  },

  -- Mason tool installer (for formatters/linters/etc.)
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    dependencies = { "williamboman/mason.nvim" },
    opts = {
      ensure_installed = {
        "stylua",     -- Lua formatter
        --"prettier",   -- JS/TS formatter
        --"eslint_d",   -- JS/TS linter
        --"flake8",     -- Python linter
      },
    },
  },
}

