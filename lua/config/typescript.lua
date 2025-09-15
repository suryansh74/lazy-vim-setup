return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ts_ls = { -- or tsserver depending on your setup
          settings = {
            typescript = {
              preferences = {
                includePackageJsonAutoImports = "auto",
                useAliasesForRenames = false,
                preferTypeOnlyAutoImports = false, -- This is the key setting
              },
            },
          },
        },
      },
    },
  },
}
