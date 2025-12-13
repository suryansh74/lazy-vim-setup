return {
  {
    "ricardoramirezr/lali-components.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
    },
    config = function()
      require("lali-components").setup({
        -- optional: tweak root detection etc.
      })
    end,
  },
}
