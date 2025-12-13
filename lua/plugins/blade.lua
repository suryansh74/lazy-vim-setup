return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- Ensure these parsers are installed
      vim.list_extend(opts.ensure_installed, {
        "blade",
        "php",
        "html",
        "css",
        "javascript",
        "typescript",
      })

      -- Enable highlighting
      opts.highlight = opts.highlight or {}
      opts.highlight.enable = true
      opts.highlight.additional_vim_regex_highlighting = { "php", "blade" }
    end,
  },
}
