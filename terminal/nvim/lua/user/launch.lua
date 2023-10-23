LAZY_PLUGIN_SPEC = {}

function spec(item)
  table.insert(LAZY_PLUGIN_SPEC, { import = item })
  -- table.insert(LAZY_PLUGIN_SPEC {
  -- "zbirenbaum/copilot-cmp",
  -- event = "InsertEnter",
  -- dependencies = { "zbirenbaum/copilot.lua" },
  -- config = function()
  --   local ok, cmp = pcall(require, "copilot_cmp")
  --   if ok then cmp.setup({}) end
  -- end,
  -- })
end
