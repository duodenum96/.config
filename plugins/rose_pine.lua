function ColorMyPencils(color)
  color = color or "rose-pine-moon"
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
  {
    "rose-pine/neovim",
    name = "rose-pine",

    config = function()
      -- vim.cmd("colorscheme rose-pine")
      require("rose-pine").setup({
        disable_italics = true,
        -- disable_background = true,
        highlight_groups = {
          Comment = { italic = true },
          String = { fg = "#a6e3a1" },
        },
      })
      -- ColorMyPencils()
    end,
  },
}
