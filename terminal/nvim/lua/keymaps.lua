local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap("n", "<Space>", "", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

--cellular
keymap("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>")

-- Notes plugin
keymap("n", "<leader>nn", "<cmd>lua require 'notes'.new_note()<CR>")
keymap("n", "<leader>nl","<cmd>lua require 'notes'.last_note()<cr>")
keymap("n", "<leader>nf","<cmd>lua require 'notes'.find_note()<cr>")
keymap("n", "<leader>ns","<cmd>lua require 'notes'.search_notes()<cr>")

-- Map Ctrl+Space to open a popup menu with commands, e.g., WhichKey
keymap("n", "<Space>", "<cmd>WhichKey \\<space><cr>", opts)

-- Better line navigation
keymap({ 'n', 'v' }, "L", "$", opts)
keymap({ 'n', 'v' }, "H", "^", opts)

-- Better window navigation using Meta (often Alt or Esc) + directional keys
keymap("n", "<m-h>", "<C-w>h", opts)  -- Move left
keymap("n", "<m-j>", "<C-w>j", opts)  -- Move down
keymap("n", "<m-k>", "<C-w>k", opts)  -- Move up
keymap("n", "<m-l>", "<C-w>l", opts)  -- Move right
keymap("n", "<m-tab>", "<c-6>", opts) -- Cycle through open windows

-- In visual mode, indent text, and re-select the visual area
keymap("v", "<", "<gv", opts)              -- Indent selected text left
keymap("v", ">", ">gv", opts)              -- Indent selected text right
keymap("n", "n", "nzzzv", opts)            -- Move to next search result and center on screen
keymap("n", "N", "Nzzzv", opts)            -- Move to previous search result and center on screen
keymap("v", "J", ":m '>+1<CR>gv=gv")       -- Move selected lines down
keymap("v", "K", ":m '<-2<CR>gv=gv", opts) -- Move selected lines up

-- When pasting in visual mode, cut the selected text before pasting
keymap("x", "p", [["_dP]]) -- Cut the selected text and paste it

vim.cmd([[:amenu 10.100 mousemenu.Goto\ Definition <cmd>lua vim.lsp.buf.definition()<CR>]])
vim.cmd([[:amenu 10.110 mousemenu.References <cmd>lua vim.lsp.buf.references()<CR>]])
keymap("n", "<RightMouse>", "<cmd>:popup mousemenu<CR>")
keymap("n", "<Tab>", "<cmd>:popup mousemenu<CR>")

--undotree
keymap("n", "<leader>u", vim.cmd.UndotreeToggle)


--No recording
keymap("n", "Q", "<nop>")

