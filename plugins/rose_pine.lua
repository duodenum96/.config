return {
  {
    "rose-pine/neovim",
    name = "rose-pine",

    config = function()
      -- vim.cmd("colorscheme rose-pine")
      require("rose-pine").setup({
        disable_italics = true,
        highlight_groups = {
          Comment = { italic = true },
        },

        -- styles = {
        -- bold = true,
        -- italic = false,
        -- transparency = true,
        -- },
      })
    end,
  },
}
