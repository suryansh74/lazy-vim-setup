-- LazyVim root detection fix
vim.g.root_spec = { "cwd" }

-- Alternative: Keep LSP detection but ensure cwd takes priority
-- vim.g.root_spec = { "cwd", "lsp", { ".git", "lua" } }

-- Disable auto-changing directory behavior
vim.opt.autochdir = false

-- Ensure named registers are saved in ShaDa

-- Force write ShaDa on exit (important for tmux)
vim.api.nvim_create_autocmd("VimLeavePre", {
  callback = function()
    vim.cmd("wshada!")
  end,
})

vim.opt.hlsearch = false

vim.g.lazyvim_php_lsp = "intelephense"
