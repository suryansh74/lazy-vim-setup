return {
  "Exafunction/codeium.nvim",
  event = "BufEnter", -- Load immediately when opening a file
  opts = {
    enable_chat = true,
    -- 1. Enable Ghost Text (Virtual Text)
    virtual_text = {
      enabled = true,
      -- 2. Set the keybindings
      key_bindings = {
        -- Press TAB to accept the suggestion
        accept = "<Tab>",

        -- Optional: Use Alt+] to cycle to the next suggestion
        next = "<M-]>",
        prev = "<M-[>",
        dismiss = "<C-]>",
      },
    },
  },
}
