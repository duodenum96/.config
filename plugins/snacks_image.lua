-- ~/.config/nvim/lua/plugins/snacks_image.lua
if true then
  return {}
end
return {
  "folke/snacks.nvim",
  opts = function(_, opts)
    opts.image = vim.tbl_deep_extend("force", opts.image or {}, {
      enabled = true,
    })
    return opts
  end,
  keys = {
    {
      "<leader>ii",
      function()
        local file = vim.fn.expand("%:p")
        if vim.fn.filereadable(file) == 1 then
          -- Open in a float window
          Snacks.win({
            file = file,
            width = 0.8,
            height = 0.8,
            wo = {
              winblend = 0,
            },
          })
        else
          vim.notify("Not a valid file", vim.log.levels.ERROR)
        end
      end,
      desc = "Show image in float",
    },
  },
}
