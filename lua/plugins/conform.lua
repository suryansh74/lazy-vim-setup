return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        blade = { "blade-formatter" },
        php = { "php_cs_fixer", "pint" }, -- optional: for PHP
      },
      formatters = {
        ["blade-formatter"] = {
          command = "blade-formatter",
          args = { "--write", "$FILENAME" },
          stdin = false,
        },
      },
    },
  },
}
