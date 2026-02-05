return {
  "nwiizo/marp.nvim",
  ft = "markdown",
  config = function()
    require("marp").setup({
      -- Optional configuration
      -- marp_command = "/opt/homebrew/opt/node/bin/node /opt/homebrew/bin/marp",
      browser = nil, -- auto-detect
      server_mode = false, -- Use watch mode (-w)
    })
  end,
}
