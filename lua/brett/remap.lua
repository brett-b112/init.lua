vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- This is suppose to execute python file with F4
vim.keymap.set('n', '<F9>', ":w <bar> exec '!python3 '.shellescape('%')<CR>")


