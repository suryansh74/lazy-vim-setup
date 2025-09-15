return {
  {
    "nvimtools/none-ls.nvim",
    opts = function(_, opts)
      local nls = require("null-ls")
      opts.sources = opts.sources or {}
      table.insert(opts.sources, nls.builtins.code_actions.eslint)
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        eslint = {
          settings = {
            rules = {
              ["@typescript-eslint/consistent-type-imports"] = "off", -- Disable the problematic rule
            },
          },
        },
      },
    },
  },
}
