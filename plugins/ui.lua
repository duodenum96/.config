return {
  -- Rose Pine theme configuration
  {
    "rose-pine/neovim",
    name = "rose-pine",
    opts = {
      styles = {
        italic = false,
      },
    },
  },

  -- Set rose-pine as default colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine-moon",
    },
  },

  {
    "folke/snacks.nvim",
    ---@type snacks.Config
    opts = {
      indent = {
        only_scope = false,
        only_current = false,
        scope = { enabled = false, only_current = true, underline = false },
        chunk = { enabled = false, only_current = true },
      },
    },
  },
  -- Customize bufferline - remove icons and close buttons
  {
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        show_buffer_icons = false,
        show_buffer_close_icons = false,
        show_close_icon = false,
        diagnostics = falseui,
        -- separator_style = "thin",
      },
    },
  },

  { "nvim-lualine/lualine.nvim", enabled = false },

  -- Customize lualine - remove clock, percent, cursor position, filename
  -- {
  --   "nvim-lualine/lualine.nvim",
  --
  --   opts = function(_, opts)
  --     -- Minimal sections - only keep mode, git branch, diagnostics
  --     opts.icons_enabled = false
  --     opts.sections = {
  --       lualine_a = { "mode" },
  --       lualine_b = { "branch" },
  --       lualine_c = { "diff", "diagnostics" },
  --       lualine_x = {}, -- Remove encoding, fileformat, filetype
  --       lualine_y = {}, -- Remove progress percentage
  --       lualine_z = {}, -- Remove location (line:column)
  --     }
  --
  --     -- Also minimal inactive sections
  --     opts.inactive_sections = {
  --       lualine_a = {},
  --       lualine_b = {},
  --       lualine_c = {},
  --       lualine_x = {},
  --       lualine_y = {},
  --       lualine_z = {},
  --     }
  --
  --     -- Modify the diagnostics section to show only errors
  --     for _, section in pairs(opts.sections or {}) do
  --       for i, component in ipairs(section) do
  --         if type(component) == "table" and component[1] == "diagnostics" then
  --           -- Only show errors, hide warnings/info/hints
  --           component.sources = { "nvim_diagnostic" }
  --           component.sections = { "error" }
  --           component.symbols = {
  --             error = " ",
  --           }
  --         end
  --       end
  --     end
  --
  --     local function custom_theme()
  --       local colors = require("lualine.themes.auto")
  --
  --       -- Make terminal mode use the same colors as normal mode
  --       colors.terminal = colors.normal
  --
  --       return colors
  --     end
  --
  --     opts.options = opts.options or {}
  --     opts.options.theme = custom_theme()
  --     return opts
  --   end,
  -- },
  --
  -- Disable noice animations and ghost text
  {
    "folke/noice.nvim",
    opts = {
      presets = {
        lsp_doc_border = true,
      },
      messages = {
        view = "mini", -- Minimal message view
      },
    },
  },

  {
    "saghen/blink.cmp",
    opts = { completion = { ghost_text = { enabled = false } } },
    cmdline = { ghost_text = { enabled = false } },
  },
  {
    "snacks.nvim",
    opts = {
      words = { enabled = false },
    },
  },
}
