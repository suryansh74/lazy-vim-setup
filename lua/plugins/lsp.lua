return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        html = {
          filetypes = { "html", "templ" },
        },
        emmet_language_server = {
          filetypes = {
            "css",
            "eruby",
            "html",
            "javascript",
            "javascriptreact",
            "less",
            "sass",
            "scss",
            "pug",
            "typescriptreact",
          },
        },
        -- Protocol Buffers Language Server
        protols = {
          filetypes = { "proto" },
        },
        -- Explicitly exclude .proto from clangd to avoid conflicts
        clangd = {
          filetypes = { "c", "cpp", "objc", "objcpp" },
        },
      },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, {
        "protols", -- Protocol Buffers Language Server
      })
    end,
  },
}
