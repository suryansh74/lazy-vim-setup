return {
  {
    "ricardoramirezr/blade-nav.nvim",
    dependencies = { "hrsh7th/nvim-cmp" }, -- if using nvim-cmp
    ft = { "blade", "php" }, -- Enable in blade and php files
    opts = {
      close_tag_on_complete = true, -- optional
    },
  },
}
