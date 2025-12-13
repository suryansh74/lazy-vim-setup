return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local lint = require("lint")

    lint.linters_by_ft = {
      php = { "phpcs" },
    }

    -- Modify phpcs to suppress PHP warnings by redirecting stderr
    local phpcs = lint.linters.phpcs
    phpcs.args = {
      "--report=json",
      "-",
    }

    -- Override the command to suppress stderr (where PHP warnings go)
    phpcs.cmd = function()
      return "sh"
    end

    phpcs.args = function()
      return {
        "-c",
        "phpcs --report=json - 2>/dev/null", -- Redirect stderr to /dev/null
      }
    end

    vim.api.nvim_create_autocmd({ "BufWritePost", "BufEnter" }, {
      callback = function()
        lint.try_lint()
      end,
    })
  end,
}
