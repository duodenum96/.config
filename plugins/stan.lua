-- if true then
--   return {}
-- end
return {
  "eigenfoo/stan-vim",
  ft = "stan", -- lazy load on Stan filetype
}

-- local servers = {
--   stan_ls = "lsp.stan",
-- }
--
-- local function setup_server(name, config_module)
--   local config = require(config_module)
--
--   vim.api.nvim_create_autocmd("FileType", {
--     pattern = config.filetypes,
--     callback = function()
--       if #vim.lsp.get_clients({ bufnr = 0, name = name }) > 0 then
--         return
--       end
--
--       local root_dir = vim.fs.root(0, config.root_markers)
--       print(
--         string.format(
--           "Starting %s for buffer %d with root: %s",
--           name,
--           vim.api.nvim_get_current_buf(),
--           root_dir or "none"
--         )
--       )
--
--       vim.lsp.start({
--         name = name,
--         cmd = config.cmd,
--         root_dir = root_dir,
--         initialization_options = config.settings or {},
--         on_exit = function(code, signal)
--           print(string.format("%s exited with code %d, signal %d", name, code, signal))
--         end,
--       })
--     end,
--   })
-- end
--
-- for server_name, config_path in pairs(servers) do
--   setup_server(server_name, config_path)
-- end
