local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>cf', builtin.find_files, {})
vim.keymap.set('n', '<leader>cg', builtin.git_files, {})
vim.keymap.set('n', '<leader>cs', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
