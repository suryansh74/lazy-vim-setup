-- LazyVim root detection fix
vim.g.root_spec = { "cwd" }

-- Alternative: Keep LSP detection but ensure cwd takes priority
-- vim.g.root_spec = { "cwd", "lsp", { ".git", "lua" } }

-- Disable auto-changing directory behavior
vim.opt.autochdir = false
