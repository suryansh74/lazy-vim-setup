-- Bootstrap LazyVim etc.
require("config.lazy")

-- Make all Go buffers modifiable and not readonly after reading/opening
vim.api.nvim_create_autocmd({ "BufReadPost", "BufNewFile" }, {
  pattern = "*.go",
  callback = function()
    vim.bo.readonly = false
    vim.bo.modifiable = true
  end,
})

-- Disable swapfile globally (optional, but you set it)
vim.o.swapfile = false

-- -- Change working directory to buffer's directory on enter, safely
-- vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
--   callback = function()
--     local filepath = vim.fn.expand("%:p")
--     if filepath ~= nil and filepath ~= "" then
--       local dir = vim.fn.fnamemodify(filepath, ":h")
--       if dir ~= nil and dir ~= "" and vim.fn.isdirectory(dir) == 1 then
--         vim.cmd("lcd " .. dir)
--       end
--     end
--   end,
-- })

-- Ensure autochdir is disable
vim.opt.autochdir = false

require("keymaps")

require("config.cmp-fix")

-- Force override WinSeparator highlight after colorscheme loads
vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#5eacd3", bold = true })

-- For pasting above line
vim.keymap.set("n", "<leader>p", ":put<CR>", { desc = "Paste below line" })
vim.keymap.set("n", "<leader>P", ":put!<CR>", { desc = "Paste above line" })
