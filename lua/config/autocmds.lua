-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
--
-- Auto-save on every change
-- vim.api.nvim_create_autocmd({ "InsertLeave", "TextChanged" }, {
--   callback = function()
--     local mode = vim.fn.mode()
--     if mode ~= "c" then -- avoid saving during command-line mode
--       vim.cmd("silent! wall") -- save all buffers
--     end
--   end,
-- })
--
-- Save and restore cursor position and view when switching buffers
vim.api.nvim_create_autocmd("BufLeave", {
  pattern = "*",
  callback = function()
    -- Save current view (includes scroll position)
    if vim.fn.expand("%") ~= "" then
      vim.cmd("silent! mkview")
    end
  end,
})

vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "*",
  callback = function()
    -- Restore saved view
    if vim.fn.expand("%") ~= "" then
      vim.cmd("silent! loadview")
    end
  end,
})
