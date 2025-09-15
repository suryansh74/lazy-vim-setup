return {
  -- Make sure LuaSnip is loaded first
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "rafamadriz/friendly-snippets",
    },
    config = function()
      -- Load friendly-snippets first
      require("luasnip.loaders.from_vscode").lazy_load()
      -- Then load custom snippets
      require("luasnip.loaders.from_vscode").lazy_load({
        paths = { vim.fn.stdpath("config") .. "/snippets" },
      })
    end,
  },
  {
    "rafamadriz/friendly-snippets",
    lazy = true,
  },
}
