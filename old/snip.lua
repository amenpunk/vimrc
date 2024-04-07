local ls = require("luasnip")

local snip = ls.snippet
local node = ls.snippet_node
local text = ls.text_node
local insert = ls.insert_node
local func = ls.function_node
local choice = ls.choice_node
local dynamicn = ls.dynamic_node

local date = function() return { os.date('%Y-%m-%d') } end

ls.add_snippets(nil, {
  all        = {
    snip({
      trig = "date",
      namr = "Date",
      dscr = "Date in the form of YYYY-MM-DD",
    }, {
      func(date, {}),
    }),
  },
  javascript = {
    snip({
      trig = "cons",
      namr = "Console print in javascript",
      dscr = "Print in javascript"
    }, {
      text({ "console.log(" }), insert(1, 'var'), text({ ")" })
    })
  },
  php = {
    snip({
      trig = "pre",
      namr = "pretty print in php",
      dscr = "Print in javascript"
    }, {
      text({ ' echo "<pre>"; echo var_dump(' }), insert(1, 'var'), text({ '); echo "</pre>";' })
    })
  },
})



require("luasnip.loaders.from_snipmate").lazy_load()
require("luasnip.loaders.from_vscode").lazy_load { paths = { "./snippets/typescript" } }
ls.filetype_extend("all", { "_" })
require("luasnip.loaders.from_vscode").lazy_load()
require("luasnip.loaders.from_vscode").load({ include = { "javascript" } })
