-- ~/.config/nvim/lua/config/cmp-fix.lua
local cmp = require("cmp")

cmp.setup({
  mapping = {
    ["<CR>"] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Replace, -- Replace existing text instead of inserting
      select = true,
    }),
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        fallback()
      end
    end, { "i", "s" }),
  },
})
