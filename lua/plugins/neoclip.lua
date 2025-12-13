return {
  {
    "AckslD/nvim-neoclip.lua",
    lazy = true,
    dependencies = {
      { "nvim-telescope/telescope.nvim" },
      { "kkharji/sqlite.lua", module = "sqlite" },
    },
    config = function()
      require("neoclip").setup({
        enable_persistent_history = true,
        history = 1000,
        db_path = vim.fn.stdpath("data") .. "/databases/neoclip.sqlite3",
      })
      require("telescope").load_extension("neoclip") -- ✅ Add this line
    end,
    keys = {
      { "<leader>y", "<cmd>Telescope neoclip<cr>", desc = "Neoclip" },
    },
  },
}
