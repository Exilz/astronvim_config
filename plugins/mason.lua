-- customize mason plugins
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      ensure_installed = { "lua_ls", "graphql", "prismals" },
    },
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      ensure_installed = { "prettier", "stylua", "graphql", "prismals" },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    opts = {
      ensure_installed = { "node2" },
      handlers = {
        node2 = function(source_name)
          local dap = require "dap"
          dap.adapters.node2 = {
            type = "executable",
            command = vim.fn.exepath "node-debug2-adapter",
          }

          dap.configurations.typescript = {
            {
              type = "node2",
              name = "Debug node (with restart)",
              request = "attach",
              processId = require("dap.utils").pick_process,
              restart = true,
            },
          }
        end,
      },
    },
  },
}
