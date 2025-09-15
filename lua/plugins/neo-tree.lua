return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    window = {
      mappings = {
        ["s"] = "none", -- Disable 's' in neo-tree
        ["Z"] = "expand_all_subnodes",
        ["z"] = "close_all_subnodes",
      },
    },
  },
}
