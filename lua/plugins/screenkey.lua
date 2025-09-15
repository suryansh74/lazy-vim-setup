return {
  "NStefan002/screenkey.nvim",
  lazy = false,
  config = function()
    require("screenkey").setup({
      win_opts = {
        row = vim.o.lines - 4,
        col = vim.o.columns - 2,
        relative = "editor",
        anchor = "SE",
        width = 15,
        height = 3,
        border = "rounded",
        title = " Screenkey ",
        title_pos = "center",
        style = "minimal",
        focusable = false,
        noautocmd = true,
      },

      -- Your working settings
      compress_after = 2,
      clear_after = 2,
      show_leader = true,
      group_mappings = true,
      separator = "",

      -- ✨ VALID customization options only
      keys = {
        ["<ESC>"] = "⎋",
        ["<CR>"] = "⏎",
        ["<TAB>"] = "⇥",
        ["<SPACE>"] = "␣",
        ["<BS>"] = "⌫",
        ["<UP>"] = "↑",
        ["<DOWN>"] = "↓",
        ["<LEFT>"] = "←",
        ["<RIGHT>"] = "→",
      },

      disable = {
        filetypes = { "TelescopePrompt" },
        buftypes = { "terminal" },
      },
    })
  end,
}
