local M = {
  "nvimtools/none-ls.nvim",
}

function M.config()
  local null_ls = require "null-ls"

  local formatting = null_ls.builtins.formatting

  null_ls.setup {
    sources = {
      formatting.stylua,
      formatting.prettier,
      formatting.prettier.with {
        extra_filetypes = { "toml" },
        -- extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" },
      },
      -- Code actions 
      null_ls.builtins.code_actions.eslint_d,
      null_ls.builtins.code_actions.proselint,
      null_ls.builtins.code_actions.shellcheck,
      -- completion
      null_ls.builtins.completion.luasnip,
      null_ls.builtins.completion.spell,
      -- diagnostics
      null_ls.builtins.diagnostics.actionlint,
      null_ls.builtins.diagnostics.ansiblelint,
      null_ls.builtins.diagnostics.hadolint,
      null_ls.builtins.diagnostics.luacheck,
      null_ls.builtins.diagnostics.markdownlint,
      null_ls.builtins.diagnostics.proselint,
      null_ls.builtins.diagnostics.revive,
      null_ls.builtins.diagnostics.ruff,
      null_ls.builtins.diagnostics.shellcheck,
      null_ls.builtins.diagnostics.spectral,
      null_ls.builtins.diagnostics.terraform_validate,
      null_ls.builtins.diagnostics.tfsec,
      -- formatting
      null_ls.builtins.formatting.beautysh,
      null_ls.builtins.formatting.golines,
      -- null_ls.builtins.formatting.markdownlint,
      null_ls.builtins.formatting.markdown_toc,
      null_ls.builtins.formatting.prettierd,
      null_ls.builtins.formatting.ruff,

      
    },
  }
end

return M
