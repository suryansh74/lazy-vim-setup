-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- Use <C-n> as "jump forward" instead of <C-i> (since <C-i> conflicts with <Tab>)
vim.keymap.set("n", "<C-n>", "<C-i>", { noremap = true, silent = true, desc = "Jump forward in jump list" })

-- In insert mode, Ctrl-w = delete word forward
vim.keymap.set("i", "<C-w>", "<C-o>dw", { desc = "Delete word forward" })

-- In insert mode, Ctrl-b = delete word backward
vim.keymap.set("i", "<C-b>", "<C-w>", { desc = "Delete word backward" })

-- Toggle screenkey
vim.keymap.set("n", "<leader>uk", function()
  require("screenkey").toggle()
end, { desc = "Toggle Screenkey" })
