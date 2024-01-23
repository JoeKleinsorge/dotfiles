local M = {
	"folke/which-key.nvim",
	event = "VeryLazy",
}

function M.config()
	local mappings = {
		["q"] = { "<cmd>confirm q<CR>", "Quit" },
		["/"] = { "<Plug>(comment_toggle_linewise_current)", "Comment" },
		["s"] = { "<cmd>nohlsearch<CR>", "No Highlight" },
		["c"] = { "<cmd>bdelete<CR>", "Close Buffer" },
		["e"] = { "<cmd>NvimTreeToggle<CR>", "Explorer" },
		["b"] = { "<cmd>Telescope buffers previewer=false<cr>", "Find Buffer" },
		-- ["a"] = { "harpoon.mark.add_file" },
		d = {
			name = "Debug",
			t = { "<cmd>lua require'dap'.toggle_breakpoint()<cr>", "Toggle Breakpoint" },
			b = { "<cmd>lua require'dap'.step_back()<cr>", "Step Back" },
			c = { "<cmd>lua require'dap'.continue()<cr>", "Continue" },
			C = { "<cmd>lua require'dap'.run_to_cursor()<cr>", "Run To Cursor" },
			d = { "<cmd>lua require'dap'.disconnect()<cr>", "Disconnect" },
			g = { "<cmd>lua require'dap'.session()<cr>", "Get Session" },
			i = { "<cmd>lua require'dap'.step_into()<cr>", "Step Into" },
			o = { "<cmd>lua require'dap'.step_over()<cr>", "Step Over" },
			u = { "<cmd>lua require'dap'.step_out()<cr>", "Step Out" },
			p = { "<cmd>lua require'dap'.pause()<cr>", "Pause" },
			r = { "<cmd>lua require'dap'.repl.toggle()<cr>", "Toggle Repl" },
			s = { "<cmd>lua require'dap'.continue()<cr>", "Start" },
			q = { "<cmd>lua require'dap'.close()<cr>", "Quit" },
			U = { "<cmd>lua require'dapui'.toggle({reset = true})<cr>", "Toggle UI" },
		},
		p = {
			name = "Plugins",
			i = { "<cmd>Lazy install<cr>", "Install" },
			s = { "<cmd>Lazy sync<cr>", "Sync" },
			S = { "<cmd>Lazy clear<cr>", "Status" },
			c = { "<cmd>Lazy clean<cr>", "Clean" },
			u = { "<cmd>Lazy update<cr>", "Update" },
			p = { "<cmd>Lazy profile<cr>", "Profile" },
			l = { "<cmd>Lazy log<cr>", "Log" },
			d = { "<cmd>Lazy debug<cr>", "Debug" },
		},

		f = {
			name = "Find",
			b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
			c = { "<cmd>Telescope colorscheme<cr>", "Colorscheme" },
			f = { "<cmd>Telescope find_files<cr>", "Find files" },
			p = { "<cmd>lua require('telescope').extensions.projects.projects()<cr>", "Projects" },
			T = { "<cmd>Telescope live_grep<cr>", "Find Text" },
			s = { "<cmd>Telescope grep_string<cr>", "Find String" },
			h = { "<cmd>Telescope help_tags<cr>", "Help" },
			H = { "<cmd>Telescope highlights<cr>", "Highlights" },
			l = { "<cmd>Telescope resume<cr>", "Last Search" },
			M = { "<cmd>Telescope man_pages<cr>", "Man Pages" },
			r = { "<cmd>Telescope oldfiles<cr>", "Recent File" },
			R = { "<cmd>Telescope registers<cr>", "Registers" },
			k = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
			C = { "<cmd>Telescope commands<cr>", "Commands" },
			t = { "<cmd>TodoTelescope<cr>", "ToDo" },
		},

		g = {
			name = "Git",
			g = { "<cmd>Neogit<cr>", "Neogit" },
	   	o = { "<cmd>Telescope git_status<cr>", "Open changed file" },
			b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
			c = { "<cmd>Telescope git_commits<cr>", "Checkout commit" },
			C = {
				"<cmd>Telescope git_bcommits<cr>",
				"Checkout commit(for current file)",
			},
			d = { "<cmd>DiffviewOpen<cr>", "Diffview" },
      D = { "<cmd>DiffviewClose<cr>", "Diffview Close" },
      f = { "<cmd>Telescope git_files<cr>", "Find file" },
		},

		l = {
			name = "LSP",
			a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
			d = { "<cmd>Telescope diagnostics bufnr=0 theme=get_ivy<cr>", "Buffer Diagnostics" },
			w = { "<cmd>Telescope diagnostics<cr>", "Diagnostics" },
			f = { "<cmd>lua vim.lsp.buf.format({timeout_ms = 1000000})<cr>", "Format" },
			i = { "<cmd>LspInfo<cr>", "Info" },
			I = { "<cmd>Mason<cr>", "Mason Info" },
			j = {
				"<cmd>lua vim.diagnostic.goto_next()<cr>",
				"Next Diagnostic",
			},
			k = {
				"<cmd>lua vim.diagnostic.goto_prev()<cr>",
				"Prev Diagnostic",
			},
			l = { "<cmd>lua vim.lsp.codelens.run()<cr>", "CodeLens Action" },
			q = { "<cmd>lua vim.diagnostic.setloclist()<cr>", "Quickfix" },
			r = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename" },
			s = { "<cmd>Telescope lsp_document_symbols<cr>", "Document Symbols" },
			S = {
				"<cmd>Telescope lsp_dynamic_workspace_symbols<cr>",
				"Workspace Symbols",
			},
			e = { "<cmd>Telescope quickfix<cr>", "Telescope Quickfix" },
		},
		n = {
			name = "Notes",
			l = { "<cmd>lua require 'gitsigns'.blame_line()<cr>", "Blame" },
			n = { "<cmd>lua require 'notes'.new_note()<cr>", "New Note" },
			f = { "<cmd>lua require 'notes'.find_note()<cr>", "Find Note" },
			s = { "<cmd>lua require 'notes'.search_notes()<cr>", "Search Notes" },
		},
    u = {
      name = "Undo Tree",
      u = { "<cmd>UndotreeToggle<cr>", "Toggle" },
    },
    a = {
      name = "Gen",
      a= { "<cmd>Gen<cr>", "Gen" },

    },


		-- h = {
		-- 	name = "Harpoon",
		-- 	m = { "Mark file", ":lua require('harpoon.mark').add_file()<CR>" },
		-- 	v = { "View project marks", ":lua require('harpoon.ui').toggle_quick_menu()<CR>" },
		-- 	n = { "Next mark", ":lua require('harpoon.ui').nav_next()<CR>" },
		-- 	p = { "Previous mark", ":lua require('harpoon.ui').nav_prev()<CR>" },
		-- },
		-- t = {
		-- 	name = "Terminal Navigation",
		-- 	n = { "Create a new terminal", ":lua require('harpoon.term').make_term()<CR>" }, -- Create a new terminal
		-- 	t1 = { "Navigate to terminal 1", ":lua require('harpoon.term').gotoTerminal(1)<CR>" },
		-- 	t2 = { "Navigate to terminal 2", ":lua require('harpoon.term').gotoTerminal(2)<CR>" },
		-- 	t3 = { "Navigate to terminal 3", ":lua require('harpoon.term').gotoTerminal(3)<CR>" },
		-- },
	}

	local opts = {
		mode = "n", -- NORMAL mode
		prefix = "<leader>",
		buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
		silent = true, -- use `silent` when creating keymaps
		noremap = true, -- use `noremap` when creating keymaps
		nowait = true, -- use `nowait` when creating keymaps
	}

	local vmappings = {
		["/"] = { "<Plug>(comment_toggle_linewise_visual)", "Comment toggle linewise (visual)" },
		l = {
			name = "LSP",
			a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
		},
	}

	local vopts = {
		mode = "v", -- VISUAL mode
		prefix = "<leader>",
		buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
		silent = true, -- use `silent` when creating keymaps
		noremap = true, -- use `noremap` when creating keymaps
		nowait = true, -- use `nowait` when creating keymaps
	}

	local which_key = require("which-key")

	which_key.setup({
		plugins = {
			marks = false, -- shows a list of your marks on ' and `
			registers = false, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
			spelling = {
				enabled = true,
				suggestions = 20,
			}, -- use which-key for spelling hints
			-- the presets plugin, adds help for a bunch of default keybindings in Neovim
			-- No actual key bindings are created
			presets = {
				operators = false, -- adds help for operators like d, y, ...
				motions = false, -- adds help for motions
				text_objects = false, -- help for text objects triggered after entering an operator
				windows = false, -- default bindings on <c-w>
				nav = false, -- misc bindings to work with windows
				z = false, -- bindings for folds, spelling and others prefixed with z
				g = false, -- bindings for prefixed with g
			},
		},
		popup_mappings = {
			scroll_down = "<c-d>", -- binding to scroll down inside the popup
			scroll_up = "<c-u>", -- binding to scroll up inside the popup
		},
		window = {
			border = "rounded", -- none, single, double, shadow
			position = "bottom", -- bottom, top
			margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
			padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
			winblend = 0,
		},
		layout = {
			height = { min = 4, max = 25 }, -- min and max height of the columns
			width = { min = 20, max = 50 }, -- min and max width of the columns
			spacing = 3, -- spacing between columns
			align = "left", -- align columns left, center or right
		},
		ignore_missing = true, -- enable this to hide mappings for which you didn't specify a label
		hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ " }, -- hide mapping boilerplate
		show_help = true, -- show help message on the command line when the popup is visible
		show_keys = true, -- show the currently pressed key and its label as a message in the command line
		triggers = "auto", -- automatically setup triggers
		-- triggers = {"<leader>"} -- or specify a list manually
		triggers_blacklist = {
			-- list of mode / prefixes that should never be hooked by WhichKey
			-- this is mostly relevant for key maps that start with a native binding
			-- most people should not need to change this
			i = { "j", "k" },
			v = { "j", "k" },
		},
		-- disable the WhichKey popup for certain buf types and file types.
		-- Disabled by default for Telescope
		disable = {
			buftypes = {},
			filetypes = { "TelescopePrompt" },
		},
	})

	which_key.register(mappings, opts)
	which_key.register(vmappings, vopts)
end

return M
