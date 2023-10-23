local M = {
  "zbirenbaum/copilot.lua",
  event = "InsertEnter",
  cmd = "Copilot",
}
function M.config()
  require("copilot").setup({
        suggestions = { enabled = false },
        panel = { enabled = false },
      })
end

return M
