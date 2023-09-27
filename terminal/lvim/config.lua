--vim
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldlevel = 4
vim.opt.foldtext =
[[substitute(getline(v:foldstart),'\\t',repeat('\ ',&tabstop),'g').'...'.trim(getline(v:foldend)) . ' (' . (v:foldend - v:foldstart + 1) . ' lines)']]
vim.opt.foldnestmax = 3
vim.opt.foldminlines = 1

-- general
lvim.format_on_save.enabled = true
lvim.transparent_window = true
lvim.colorscheme = "Everforest"
lvim.builtin.nvimtree.setup.actions.open_file.quit_on_open = true

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"

-- builtin
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = true
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enable = true
lvim.builtin.treesitter.rainbow.enable = true
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "go",
  "gomod",
  "javascript",
  "json",
  "lua",
  "python",
  "markdown",
  "markdown_inline",
  "typescript",
  "tsx",
  "css",
  "java",
  "yaml",
}
lvim.builtin.dap.active = true

-- Mappings
lvim.builtin.which_key.mappings["z"] = { "<cmd>ZenMode<cr>", " Zen" }
lvim.builtin.which_key.mappings["t"] = {
  name = "Diagnostics",
  t = { "<cmd>TodoTelescope<cr>", "ToDo" },
  w = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "workspace" },
  d = { "<cmd>TroubleToggle document_diagnostics<cr>", "document" },
  q = { "<cmd>TroubleToggle quickfix<cr>", "quickfix" },
  l = { "<cmd>TroubleToggle loclist<cr>", "loclist" },
  r = { "<cmd>TroubleToggle lsp_references<cr>", "references" },
  f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
}
lvim.builtin.which_key.mappings["dm"] = { "<cmd>lua require('neotest').run.run()<cr>",
  "Test Method" }
lvim.builtin.which_key.mappings["dM"] = { "<cmd>lua require('neotest').run.run({strategy = 'dap'})<cr>",
  "Test Method DAP" }
lvim.builtin.which_key.mappings["df"] = {
  "<cmd>lua require('neotest').run.run({vim.fn.expand('%')})<cr>", "Test Class" }
lvim.builtin.which_key.mappings["dF"] = {
  "<cmd>lua require('neotest').run.run({vim.fn.expand('%'), strategy = 'dap'})<cr>", "Test Class DAP" }
lvim.builtin.which_key.mappings["dS"] = { "<cmd>lua require('neotest').summary.toggle()<cr>", "Test Summary" }
lvim.builtin.which_key.mappings["qs"] = { "<cmd>lua require('persistence').load({ last = true })<cr>", "Restore session" }
lvim.builtin.which_key.mappings["n"] = {
  name = "Notes",
  n = { "<cmd>lua require('nvim-notes').new_note()<cr>", "New Note" },
  f = { "<cmd>lua require('nvim-notes').find_note()<cr>", "Find Note" },
  s = { "<cmd>lua require('nvim-notes').search_notes()<cr>", "Search Notes" },
}

-- Additional Plugins
lvim.plugins = {
  {
    "joekleinsorge/nvim-notes",
    -- branch = "main",
    branch = "develop",
  },
  { "olexsmir/gopher.nvim" },
  { "leoluz/nvim-dap-go" },
  {
    "neanias/everforest-nvim",
    version = false,
    lazy = false,
    priority = 1000,
    config = function()
      require("everforest").setup({
        background = "medium",
        transparent_background_level = 0,
      })
    end,
  },
  { "mg979/vim-visual-multi" },
  { "mrjones2014/nvim-ts-rainbow" },
  { "tpope/vim-surround" },
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  { "folke/twilight.nvim" },
  {
    "folke/zen-mode.nvim",
    lazy = true,
    cmd = "ZenMode",
  },
  {
    "folke/todo-comments.nvim",
    dependencies = "nvim-lua/plenary.nvim",
    opts = {
      colors = {
        info = { "DiagnosticInfo", "#FF8C00" }
      }
    }
  },
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        suggestions = { enabled = false },
        panel = { enabled = false },
      })
    end,
  },
  { "mfussenegger/nvim-dap-python" },
  { "nvim-neotest/neotest" },
  { "nvim-neotest/neotest-python" },
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    ---@type Flash.Config
    opts = {},
    keys = {
      {
        "s",
        mode = { "n", "x", "o" },
        function()
          require("flash").jump({
            search = {
              mode = function(str)
                return "\\<" .. str
              end,
            },
          })
        end,
        desc = "Flash",
      },
      {
        "S",
        mode = { "n", "o", "x" },
        function()
          require("flash").treesitter()
        end,
        desc = "Flash Treesitter",
      },
      {
        "r",
        mode = "o",
        function()
          require("flash").remote()
        end,
        desc = "Remote Flash",
      },
      {
        "R",
        mode = { "o", "x" },
        function()
          require("flash").treesitter_search()
        end,
        desc = "Flash Treesitter Search",
      },
      {
        "<c-s>",
        mode = { "c" },
        function()
          require("flash").toggle()
        end,
        desc = "Toggle Flash Search",
      },
    },
  },
  { "nvim-tree/nvim-web-devicons" },
  -- {
  --   "jackMort/ChatGPT.nvim",
  --   event = "VeryLazy",
  --   config = function()
  --     require("chatgpt").setup({
  --       api_key_cmd = "echo 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",
  --     })
  --   end,
  --   dependencies = {
  --     "MunifTanjim/nui.nvim",
  --     "nvim-lua/plenary.nvim",
  --     "nvim-telescope/telescope.nvim"
  --   }
  -- }
}

-- Copilot Setup
table.insert(lvim.plugins, {
  "zbirenbaum/copilot-cmp",
  event = "InsertEnter",
  dependencies = { "zbirenbaum/copilot.lua" },
  config = function()
    local ok, cmp = pcall(require, "copilot_cmp")
    if ok then cmp.setup({}) end
  end,
})

-- python setup
local linters = require "lvim.lsp.null-ls.linters"
linters.setup { { command = "flake8", filetypes = { "python" } } }

-- python testing
local mason_path = vim.fn.glob(vim.fn.stdpath "data" .. "/mason/")
pcall(function()
  require("dap-python").setup(mason_path .. "packages/debugpy/venv/bin/python")
end)
lvim.lsp.installer.setup.ensure_installed = { "marksman" }
require("lvim.lsp.manager").setup("marksman")

require("neotest").setup({
  adapters = {
    require("neotest-python")({
      dap = {
        justMyCode = false,
        console = "integratedTerminal",
      },
      args = { "--log-level", "DEBUG", "--quiet" },
      runner = "pytest",
    })
  }
})
