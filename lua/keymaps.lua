vim.o.timeout = true
vim.o.timeoutlen = 200

vim.keymap.set("i", "jk", "<esc>", { noremap = true, silent = true })
vim.keymap.set("v", "jk", "<esc>", { noremap = true, silent = true })

vim.keymap.set("i", "kj", "<esc>", { noremap = true, silent = true })
vim.keymap.set("v", "kj", "<esc>", { noremap = true, silent = true })

-- Redo with Shift+U
vim.keymap.set("n", "U", "<C-r>", { noremap = true, silent = true, desc = "Redo" })

-- for autosave

vim.keymap.set("n", "jk", ":w<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "kj", ":w<CR>", { noremap = true, silent = true })
-- vim.keymap.set("n", "<Tab>", ":bnext<CR>", { silent = true })
-- vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", { silent = true })
--
-- like goland alt+enter to open code actions
-- Test in lua/config/keymaps.lua
vim.keymap.set("n", "<M-CR>", function()
  vim.notify("Alt+Enter pressed!", vim.log.levels.INFO)
end, { desc = "Test Alt+Enter" })

-- toggling next and previous buffers
vim.keymap.set("n", "<leader>ba", "<C-^>", { desc = "Alternate buffer" })

-- Run test cases in golang
vim.keymap.set("n", "<leader>ct", function()
  -- Run tests and generate coverage.out
  vim.cmd("!go test ./... -coverprofile=coverage.out")

  -- Load and show coverage highlighting
  vim.cmd("CoverageLoad")
  vim.cmd("CoverageShow")

  -- Open coverage summary
  vim.cmd("CoverageSummary")
end, { desc = "Run tests + load/show coverage + summary" })
