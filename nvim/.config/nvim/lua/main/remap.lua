-- set leader key shortcut as space
vim.g.mapleader = " "

-- open Netrw (vim file manager)
vim.keymap.set("n", "<leader>cx", vim.cmd.Ex)

-- greatest remap ever
vim.keymap.set("x", "<leader>x", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({"n", "v"}, "<leader>p", [["+p]])
vim.keymap.set("n", "<leader>P", [["+P]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- move selected chunks of text
vim.keymap.set("x", "J", ":m '>+1<cr>gv=gv", opts)
vim.keymap.set("x", "K", ":m '<-2<cr>gv=gv", opts) 

-- shortcut to open markdown preview in browser
-- configured to librewolf in ~/.local/share/nvim/site/pack/packer/opt/markdown-preview.nvim/plugin/mkdp.vim
vim.keymap.set("n", "<leader>md", "<cmd>MarkdownPreviewToggle<cr>", { noremap = true })
