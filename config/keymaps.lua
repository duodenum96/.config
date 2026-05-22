-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- ~/.config/nvim/lua/config/keymaps.lua (or create a new plugin file)
vim.keymap.del("n", "<leader>uz")

local api = vim.api

api.nvim_set_keymap("n", "<leader>zn", ":TZNarrow<CR>", {})
api.nvim_set_keymap("v", "<leader>zn", ":'<,'>TZNarrow<CR>", {})
api.nvim_set_keymap("n", "<leader>zf", ":TZFocus<CR>", {})
api.nvim_set_keymap("n", "<leader>zm", ":TZMinimalist<CR>", {})
api.nvim_set_keymap("n", "<leader>za", ":TZAtaraxis<CR>", {})
api.nvim_set_keymap("n", "<leader>ga", ":git add %", {})

vim.keymap.set("n", "<leader>gc", function()
  Snacks.terminal.open({ "lazygit" }, {
    win = {
      style = "terminal",
      width = 0.9,
      height = 0.9,
      border = "rounded",
    },
    esc_esc = false,
  })

  -- Automatically press 'c' to open commit window
  vim.defer_fn(function()
    vim.api.nvim_feedkeys("c", "n", false)
  end, 150)
end, { desc = "Git commit" })
