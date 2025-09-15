vim.o.timeout = true
vim.o.timeoutlen = 200

vim.keymap.set("i", "jk", "<esc>", { noremap = true, silent = true })
vim.keymap.set("v", "jk", "<esc>", { noremap = true, silent = true })

vim.keymap.set("i", "kj", "<esc>", { noremap = true, silent = true })
vim.keymap.set("v", "kj", "<esc>", { noremap = true, silent = true })

-- for autosave

vim.keymap.set("n", "jk", ":w<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "kj", ":w<CR>", { noremap = true, silent = true })
-- vim.keymap.set("n", "<Tab>", ":bnext<CR>", { silent = true })
-- vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", { silent = true })
