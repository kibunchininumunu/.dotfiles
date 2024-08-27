require("main")

-- Restore cursor position
vim.api.nvim_create_autocmd({ "BufReadPost" }, {
    pattern = { "*" },
    callback = function()
        vim.api.nvim_exec('silent! normal! g`"zv', false)
    end,
})

-- Basic settings
vim.o.number = true -- Enable line numbers

-- source vimscript file for current line bolding
vim.cmd('source ~/.config/nvim/linenum.vim')
