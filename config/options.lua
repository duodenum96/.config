-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.snacks_animate = false
vim.opt.list = false
vim.opt.cursorline = false
vim.opt.laststatus = 2
vim.opt.pumheight = 3

vim.g.statusline_recording = ""

local statusline_group = vim.api.nvim_create_augroup("statusline_recording", { clear = true })

vim.api.nvim_create_autocmd("RecordingEnter", {
  group = statusline_group,
  callback = function()
    vim.g.statusline_recording = "Recording @" .. vim.fn.reg_recording()
  end,
})

vim.api.nvim_create_autocmd("RecordingLeave", {
  group = statusline_group,
  callback = function()
    vim.g.statusline_recording = ""
  end,
})

vim.api.nvim_set_hl(0, "RecordingHighlight", { fg = "#ff0000", bold = true })

vim.opt.statusline:append("%#RecordingHighlight#%{g:statusline_recording}%*")

-- Set autoindentation to 4 spaces
vim.opt.tabstop = 4 -- Number of spaces a <Tab> counts for
vim.opt.shiftwidth = 4 -- Number of spaces for autoindent (>>, <<, etc.)
vim.opt.expandtab = true -- Use spaces instead of tabs
vim.opt.autoindent = true -- Copy indent from current line when starting a new line
vim.opt.smartindent = true -- Smart autoindent (improves on autoindent for code)
vim.opt.softtabstop = 4 -- Number of spaces for <Tab> in insert mode (backspace deletes 4 spaces)
