return {
  -- This extends the existing avante plugin configuration
  {
    "yetone/avante.nvim",
    keys = {
      {
        "<leader>ak",
        function()
          local line_count = vim.api.nvim_buf_line_count(0)

          if line_count > 100 then
            vim.notify("⚠️  File exceeds 100 lines limit (" .. line_count .. " lines)", vim.log.levels.WARN)
            return
          end

          vim.notify("🤖 Starting auto error resolution...", vim.log.levels.INFO)

          -- Select all code
          vim.cmd("normal! ggVG")

          -- Use vim.schedule to ensure proper execution order
          vim.schedule(function()
            vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<leader>ae", true, false, true), "x", false)

            -- Wait longer for Avante to fully load
            vim.defer_fn(function()
              local prompt = "resolve error if any present in this code without modify code logic"
              vim.api.nvim_feedkeys(prompt, "i", false)

              vim.defer_fn(function()
                vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<CR>", true, false, true), "i", false)
              end, 150)
            end, 1000) -- Increased delay
          end)
        end,
        desc = "🔧 Auto-fix code errors with Avante",
        mode = "n",
      },
    },
  },
}
