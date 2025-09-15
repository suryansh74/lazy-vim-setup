return {
  -- Simple telescope root fix
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      {
        "<leader><space>",
        function()
          require("telescope.builtin").find_files({
            cwd = vim.fn.getcwd(),
            prompt_title = "Find Files (CWD)",
          })
        end,
        desc = "Find Files (CWD)",
      },
    },
  },
}
