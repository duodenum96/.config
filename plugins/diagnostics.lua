-- ~/.config/nvim/lua/plugins/diagnostics.lua
-- Configuration to suppress warnings from ty and ruff, keeping only errors
-- and making diagnostics less intrusive

return {
  -- Configure nvim-lspconfig
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- Diagnostics configuration
      diagnostics = {
        underline = false,
        update_in_insert = false,
        virtual_text = false, -- Disable inline virtual text to be less intrusive
        severity_sort = true,
        float = {
          focusable = false,
          style = "minimal",
          border = "rounded",
          source = "always",
          header = "",
          prefix = "",
        },
      },

      -- LSP server configurations
      servers = {
        -- Pyright/Basedpyright configuration (assuming you're using ty which is related to Python typing)
        -- basedpyright = {
        --   settings = {
        --     basedpyright = {
        --       analysis = {
        --         diagnosticSeverityOverrides = {
        --           -- Suppress warnings, keep errors
        --           reportUnusedImport = "none",
        --           reportUnusedVariable = "none",
        --           reportUnusedClass = "none",
        --           reportUnusedFunction = "none",
        --         },
        --       },
        --     },
        --   },
        -- },

        -- Ruff LSP configuration
        ruff_lsp = {
          init_options = {
            settings = {
              -- Configure ruff to show only errors
              args = {
                "--select=E,F", -- Only select error codes, adjust as needed
                "--ignore=", -- Clear any default ignores if needed
              },
            },
          },
        },
      },
    },
  },

  -- Configure diagnostics display globally
  {
    "folke/noice.nvim",
    optional = true,
    opts = {
      lsp = {
        progress = {
          enabled = false, -- Disable LSP progress messages for less intrusion
        },
      },
    },
  },

  -- Additional diagnostic filtering
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      -- Filter diagnostics to show only errors for specific sources
      local function filter_diagnostics(diagnostic)
        -- For ruff and ty, only show errors (severity 1)
        if
          diagnostic.source == "ruff"
          or diagnostic.source == "Ruff"
          or diagnostic.source == "ty"
          or diagnostic.source == "Ty"
        then
          return diagnostic.severity == vim.diagnostic.severity.ERROR
        end
        -- For other sources, show all diagnostics
        return true
      end

      -- Set up diagnostic filtering
      vim.diagnostic.config({
        virtual_text = false, -- Disable virtual text
        signs = true, -- Keep signs in the gutter
        underline = true,
        update_in_insert = false,
        severity_sort = true,
      })

      -- Apply custom filtering
      local original_handler = vim.diagnostic.handlers.virtual_text
      vim.diagnostic.handlers.virtual_text = {
        show = function(namespace, bufnr, diagnostics, opts)
          local filtered = vim.tbl_filter(filter_diagnostics, diagnostics)
          if original_handler and original_handler.show then
            original_handler.show(namespace, bufnr, filtered, opts)
          end
        end,
        hide = function(...)
          if original_handler and original_handler.hide then
            original_handler.hide(...)
          end
        end,
      }
    end,
  },
}
