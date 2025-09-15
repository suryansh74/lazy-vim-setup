return {
  -- Remove the broken vim-colors-solarized and replace with this:
  {
    "Tsuzat/NeoSolarized.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("NeoSolarized").setup({
        style = "dark",
        transparent = true, -- Perfect for your transparent setup!
        terminal_colors = true,
        enable_italics = true,
        styles = {
          comments = { italic = true },
          keywords = { italic = true },
          functions = { bold = true },
          variables = {},
          string = { italic = true },
        },
      })
    end,
  },

  -- Enhanced vim colorscheme with better syntax colors
  {
    "xiyaowong/transparent.nvim",
    lazy = false,
    config = function()
      require("transparent").setup({
        groups = {
          "Normal",
          "NormalNC",
          "Comment",
          "Constant",
          "Special",
          "Identifier",
          "Statement",
          "PreProc",
          "Type",
          "Underlined",
          "Todo",
          "String",
          "Function",
          "Conditional",
          "Repeat",
          "Operator",
          "Structure",
          "LineNr",
          "NonText",
          "SignColumn",
          "CursorLineNr",
          "EndOfBuffer",
        },
        extra_groups = {
          "NormalFloat",
          "NvimTreeNormal",
        },
      })

      -- Custom transparent vim command
      vim.api.nvim_create_user_command("TransparentVim", function()
        vim.cmd("colorscheme NeoSolarized")

        -- Custom syntax highlighting for transparent background
        local highlights = {
          Comment = { fg = "#586E75", italic = true }, -- Solarized base01
          String = { fg = "#2AA198" }, -- Solarized cyan
          Number = { fg = "#D33682" }, -- Solarized magenta
          Boolean = { fg = "#DC322F" }, -- Solarized red
          Function = { fg = "#268BD2", bold = true }, -- Solarized blue
          Keyword = { fg = "#859900", bold = true }, -- Solarized green
          Type = { fg = "#B58900" }, -- Solarized yellow
          Variable = { fg = "#839496" }, -- Solarized base0
          Constant = { fg = "#CB4B16" }, -- Solarized orange
          Operator = { fg = "#6C71C4" }, -- Solarized violet
        }

        for group, opts in pairs(highlights) do
          vim.api.nvim_set_hl(0, group, opts)
        end

        -- Make background fully transparent
        vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
        vim.api.nvim_set_hl(0, "SignColumn", { bg = "NONE" })

        vim.notify("Transparent NeoSolarized theme activated!")
      end, {})
    end,
  },
}
