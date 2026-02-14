return {
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      opts.formatters_by_ft = opts.formatters_by_ft or {}
      opts.formatters_by_ft.proto = { "buf" }
      opts.formatters_by_ft.jet = { "djlint" }
      opts.formatters_by_ft.html = { "prettier" }
      opts.formatters_by_ft.css = { "prettier" }
      -- Python formatters
      opts.formatters_by_ft.python = { "ruff_format", "ruff_organize_imports" }
      -- Alternative: opts.formatters_by_ft.python = { "isort", "black" }

      -- Optional: Enable format on save
      opts.format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      }
    end,
  },
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, {
        "buf", -- Protocol Buffers formatter
        "ruff", -- Python formatter/linter (fast, recommended)
        -- Alternative Python formatters (uncomment if you prefer):
        -- "black",
        -- "isort",
      })
    end,
  },
}
