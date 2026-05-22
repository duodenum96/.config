-- lua/plugins/lsp.lua

-- Register ty server (not yet in nvim-lspconfig)
local configs = require("lspconfig.configs")
if not configs.ty then
  configs.ty = {
    default_config = {
      cmd = { "ty", "server" },
      filetypes = { "python" },
      root_dir = require("lspconfig.util").root_pattern("pyproject.toml", "ty.toml", ".git"),
      single_file_support = true,
    },
  }
end

-- vim.lsp.config("jetls", {
--   cmd = {
--     "jetls",
--     "serve",
--   },
--   filetypes = { "julia" },
--   root_markers = { "Project.toml" },
--   settings = { jetls = {
--     formatter = "Runic",
--   } },
--   on_attach = function(client, bufnr)
--     client.server_capabilities.documentFormattingProvider = false
--     client.server_capabilities.documentRangeFormattingProvider = false
--   end,
-- })
vim.lsp.enable("julials")

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Disable the alternatives
        basedpyright = { enabled = false },
        pyright = { enabled = false },
        pylsp = { enabled = false },
        eslint = { enabled = false },

        -- Enable ty for type checking
        ty = {
          enabled = true,
          autostart = true,
        },

        -- Enable ruff for linting/formatting
        ruff = {
          enabled = true,
          autostart = true,
          init_options = {
            settings = {
              fixAll = true,
            },
          },
        },
      },
      inlay_hints = { enabled = false },
      document_highlight = { enabled = false },
    },
  },
}
