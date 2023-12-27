local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap("n", "<Space>", "", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Map Ctrl+Space to open a popup menu with commands, e.g., WhichKey
keymap("n", "<C-Space>", "<cmd>WhichKey \\<space><cr>", opts)

-- Better line navigation
keymap("n", "H", "^", opts)
keymap("n", "L", "$", opts)

-- Better window navigation using Meta (often Alt or Esc) + directional keys
keymap("n", "<m-h>", "<C-w>h", opts)  -- Move left
keymap("n", "<m-j>", "<C-w>j", opts)  -- Move down
keymap("n", "<m-k>", "<C-w>k", opts)  -- Move up
keymap("n", "<m-l>", "<C-w>l", opts)  -- Move right
keymap("n", "<m-tab>", "<c-6>", opts) -- Cycle through open windows

-- In visual mode, indent text, and re-select the visual area
keymap("v", "<", "<gv", opts) -- Indent selected text left
keymap("v", ">", ">gv", opts) -- Indent selected text right

keymap("n", "n", "nzzzv")
keymap("n", "N", "Nzzzv")
keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")

-- When pasting in visual mode, cut the selected text before pasting
keymap("x", "p", [["_dP]]) -- Cut the selected text and paste it
vim.cmd([[:amenu 10.100 mousemenu.Goto\ Definition <cmd>lua vim.lsp.buf.definition()<CR>]])
vim.cmd([[:amenu 10.110 mousemenu.References <cmd>lua vim.lsp.buf.references()<CR>]])

keymap("n", "<RightMouse>", "<cmd>:popup mousemenu<CR>")
keymap("n", "<Tab>", "<cmd>:popup mousemenu<CR>")


--undotree
keymap("n", "<leader>u", vim.cmd.UndotreeToggle)

--cellular
keymap("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>")

keymap("n", "Q", "<nop>")

--harpoon
-- local mark = require("harpoon.mark")
-- local ui = require("harpoon.ui")
--
-- keymap("n", "<leader>a", mark.add_file)
-- keymap("n", "<C-e>", ui.toggle_quick_menu)
--
-- keymap("n", "<C-h>", function() ui.nav_file(1) end)
-- keymap("n", "<C-t>", function() ui.nav_file(2) end)
-- keymap("n", "<C-n>", function() ui.nav_file(3) end)
-- keymap("n", "<C-s>", function() ui.nav_file(4) end)
