return {
  -- 1. LSP Configuration
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {
          settings = {
            python = {
              analysis = {
                autoSearchPaths = true,
                useLibraryCodeForTypes = true,
                diagnosticMode = "workspace",
              },
            },
          },
        },
      },
    },
  },

  -- 2. Formatting (conform.nvim)
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        python = { "ruff_format", "black" },
        -- Added generic web formatters just in case you need them
        html = { "prettier" },
        gotmpl = { "prettier" },
        templ = { "prettier" },
      },
    },
  },

  -- 3. Linting (nvim-lint)
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        python = { "ruff" },
      },
    },
  },

  -- 4. Debugging (nvim-dap) - CORRECTED FOR PYTHON
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "mfussenegger/nvim-dap-python", -- Required extension for Python debugging
    },
    config = function()
      -- We do NOT call dap.setup()!
      -- Instead, we configure the specific python adapter:

      -- Locate the 'debugpy' installed by Mason
      local path = vim.fn.stdpath("data") .. "/mason/packages/debugpy/venv/bin/python"

      -- If you are on Windows, the path might need ".exe" appended, but on Linux (Ubuntu), this is correct.
      require("dap-python").setup(path)
    end,
  },
}
