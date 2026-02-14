return {
  "susliko/tla.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("tla").setup({
      -- 1. Point to the tools you downloaded
      tla_jar = vim.fn.expand("~/.local/share/tlaplus/tla2tools.jar"),

      -- 2. THIS IS THE FIX: Tell it to use the system 'java' command
      java_executable = "java",
    })
  end,
}
