if true then
  return {}
end
-- ~/.config/nvim/lua/plugins/image.lua
-- ~/.config/nvim/lua/plugins/image.lua
return {
  "3rd/image.nvim",
  build = false,
  opts = {
    backend = "sixel",
    processor = "magick_cli",
    integrations = {
      markdown = {
        enabled = true,
        clear_in_insert_mode = false,
        download_remote_images = true,
        only_render_image_at_cursor = false,
      },
    },
    -- Add these to work around Windows issues
    tmux_show_only_in_active_window = false,
    window_overlap_clear_enabled = false,
    max_width = nil,
    max_height = nil,
    max_width_window_percentage = nil,
    max_height_window_percentage = 50,
    hijack_file_patterns = { "*.png", "*.jpg", "*.jpeg", "*.gif", "*.webp" },
  },
}
