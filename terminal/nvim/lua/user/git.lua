local M = {
  "neogitorg/neogit",
  event = "VeryLazy",
}

function M.config()
  local icons = require "user.icons"

  require("neogit").setup {
    disable_signs = false,
    disable_hint = true,
    disable_context_highlighting = false,
    disable_commit_confirmation = true,
    disable_insert_on_commit = "auto",
    auto_refresh = true,
    disable_builtin_notifications = false,
    use_magit_keybindings = false,
    kind = "tab",
    commit_popup = {
      kind = "split",
    },
    popup = {
      kind = "split",
    },
    signs = {
      section = { icons.ui.ChevronRight, icons.ui.ChevronShortDown },
      item = { icons.ui.ChevronRight, icons.ui.ChevronShortDown },
      hunk = { "", "" },
    },
    integrations = {
      diffview = true,
    },
    -- Setting any section to `false` will make the section not render at all
    -- sections = {
    --   untracked = {
    --     folded = false,
    --   },
    --   unstaged = {
    --     folded = false,
    --   },
    --   staged = {
    --     folded = false,
    --   },
    --   stashes = {
    --     folded = true,
    --   },
    --   unpulled = {
    --     folded = true,
    --   },
    --   unmerged = {
    --     folded = false,
    --   },
    --   recent = {
    --     folded = true,
    --   },
    -- },
    -- override/add mappings
    -- mappings = {
    --   -- modify status buffer mappings
    --   status = {
    --     ["q"] = "Close",
    --     ["1"] = "Depth1",
    --     ["2"] = "Depth2",
    --     ["3"] = "Depth3",
    --     ["4"] = "Depth4",
    --     ["<tab>"] = "Toggle",
    --     ["x"] = "Discard",
    --     ["s"] = "Stage",
    --     ["a"] = "StageUnstaged",
    --     ["<c-s>"] = "StageAll",
    --     ["u"] = "Unstage",
    --     ["U"] = "UnstageStaged",
    --     ["d"] = "DiffAtFile",
    --     ["$"] = "CommandHistory",
    --     ["<c-r>"] = "RefreshBuffer",
    --     ["o"] = "GoToFile",
    --     ["<enter>"] = "Toggle",
    --     ["<c-v>"] = "VSplitOpen",
    --     ["<c-x>"] = "SplitOpen",
    --     ["<c-t>"] = "TabOpen",
    --     ["?"] = "HelpPopup",
    --     ["D"] = "DiffPopup",
    --     ["p"] = "PullPopup",
    --     ["r"] = "RebasePopup",
    --     ["P"] = "PushPopup",
    --     ["c"] = "CommitPopup",
    --     ["L"] = "LogPopup",
    --     ["Z"] = "StashPopup",
    --     ["b"] = "BranchPopup",
    --     -- ["<space>"] = "Stage",
    --     -- Removes the default mapping of "s"
    --     -- ["s"] = "",
    --   },
    -- },
  }
end

return M
