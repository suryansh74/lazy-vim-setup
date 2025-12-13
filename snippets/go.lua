local ls = require("luasnip")
local s = ls.s
local i = ls.insert_node
local t = ls.text_node
local d = ls.dynamic_node
local c = ls.choice_node
local f = ls.function_node
local snippet_from_nodes = ls.sn

-- Smart error handling snippet
s("err", {
  i(1, "result"),
  t(", "),
  i(2, "err"),
  t(" := "),
  i(3, "someFunc"),
  t("("),
  i(4),
  t(")"),
  t({ "", "if " }),
  f(function(args)
    return args[1]
  end, { 2 }),
  t({ " != nil {", "\treturn " }),
  d(5, function()
    -- This dynamically generates the correct return values
    -- based on your function signature
    return snippet_from_nodes(nil, {
      t("0, "), -- or appropriate zero value
      f(function(args)
        return args[1]
      end, { 2 }),
    })
  end),
  t({ "", "}" }),
  i(0),
})
