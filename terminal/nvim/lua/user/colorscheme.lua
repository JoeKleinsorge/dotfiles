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

local M = {
	"rebelot/kanagawa.nvim",
	config = function()
		require("kanagawa").load("dragon")
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	end,
}
return M
