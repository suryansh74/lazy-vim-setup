return {
  {
    "nvim-telescope/telescope.nvim",
    opts = function(_, opts)
      local actions = require("telescope.actions")

      -- Override default telescope behavior
      opts.defaults = opts.defaults or {}
      opts.defaults.cwd = vim.fn.getcwd()

      -- Ensure telescope always searches from project root
      opts.pickers = opts.pickers or {}
      opts.pickers.find_files = {
        find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
        cwd = vim.fn.getcwd(),
      }
      opts.pickers.live_grep = {
        cwd = vim.fn.getcwd(),
      }

      return opts
    end,
    keys = {
      -- Override LazyVim's default telescope keymaps to use cwd
      {
        "<leader><space>",
        function()
          require("telescope.builtin").find_files({ cwd = vim.fn.getcwd() })
        end,
        desc = "Find Files (cwd)",
      },
      {
        "<leader>ff",
        function()
          require("telescope.builtin").find_files({ cwd = vim.fn.getcwd() })
        end,
        desc = "Find Files (cwd)",
      },
      {
        "<leader>fg",
        function()
          require("telescope.builtin").live_grep({ cwd = vim.fn.getcwd() })
        end,
        desc = "Grep (cwd)",
      },
    },
  },
}
