return {
  "williamboman/mason-lspconfig.nvim",
  opts = function(_, opts)
    opts.ensure_installed = opts.ensure_installed or {}

    -- Filter out 'protols' from the list
    local new_list = {}
    for _, tool in ipairs(opts.ensure_installed) do
      if tool ~= "protols" then
        table.insert(new_list, tool)
      end
    end
    opts.ensure_installed = new_list
  end,
}
