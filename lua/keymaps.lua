vim.o.timeout = true
vim.o.timeoutlen = 300

vim.keymap.set("i", "jk", "<Esc>", { noremap = true, silent = true })
vim.keymap.set("v", "jk", "<Esc>", { noremap = true, silent = true })

vim.keymap.set("n", "<Tab>", ":bnext<CR>", { silent = true })
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", { silent = true })
