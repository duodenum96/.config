-- ~/.config/nvim/lua/plugins/hologram.lua
if true then
  return {}
end
return {
  "edluffy/hologram.nvim",
  config = function()
    require("hologram").setup({
      auto_display = true, -- Display images automatically
    })
  end,
}
