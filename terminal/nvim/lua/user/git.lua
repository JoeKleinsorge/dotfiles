local M = {
  "tpope/vim-fugitive", 
  event = "VeryLazy",
}

vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

local F = vim.api.nvim_create_augroup("M", {})

local autocmd = vim.api.nvim_create_autocmd
autocmd("BufWinEnter", {
    group = F,
    pattern = "*",
    callback = function()
        if vim.bo.ft ~= "fugitive" then
            return
        end

        local bufnr = vim.api.nvim_get_current_buf()
        local opts = {buffer = bufnr, remap = false}
        vim.keymap.set("n", "<leader>gpl", function()
            vim.cmd.Git({'pull',  '--rebase'})
        end, opts)

        vim.keymap.set("n", "<leader>gp", ":Git push -u origin ", opts);
    end,
})

return M
