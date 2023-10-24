-- local M = {
--   "LunarVim/primer.nvim",
--   lazy = false, -- make sure we load this during startup if it is your main colorscheme
--   priority = 1000, -- make sure to load this before all the other start plugins
-- }
--
-- function M.config()
--   vim.cmd.colorscheme "primer_dark"
-- end
--
-- return M

-- local M = {
--   'projekt0n/github-nvim-theme',
--   lazy = false, -- make sure we load this during startup if it is your main colorscheme
--   priority = 1000, -- make sure to load this before all the other start plugins
--   config = function()
--     require('github-theme').setup({
--       -- ...
--     })
--     vim.cmd('colorscheme github_dark_dimmed')
--   end
-- }
-- return M

-- local M = {
--   "monsonjeremy/onedark.nvim",
--   lazy = false,
--   priority = 1000,
--   -- config = function()
--   --   require("onedark").setup({
--   --   functionStyle = "italic",
--   --   sidebars = {"qf", "vista_kind", "terminal", "packer"},
--   --   colors = {hint = "orange", error = "#ff0000"}
--   -- })
--   -- end
-- }
-- return M

local M = { 
  "rebelot/kanagawa.nvim", 
  config = function ()
   require("kanagawa").load("dragon") 
  end

}
return M
