vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Better window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h") -- left window
vim.keymap.set("n", "<C-k>", "<C-w>k") -- up window
vim.keymap.set("n", "<C-j>", "<C-w>j") -- down window
vim.keymap.set("n", "<C-l>", "<C-w>l") -- right window

-- Resize with arrows when using multiple windows
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>")
vim.keymap.set("n", "<C-down>", ":resize +2<CR>")
vim.keymap.set("n", "<C-right>", ":vertical resize -2<CR>")
vim.keymap.set("n", "<C-left>", ":vertical resize +2<CR>")

-- Navigate buffers
vim.keymap.set("n", "<tab>", ":bnext<cr>")
vim.keymap.set("n", "<s-tab>", ":bprevious<cr>")
vim.keymap.set("n", "<leader>h", ":nohlsearch<cr>")

-- Neotree stuff
vim.keymap.set('n', '<C-n>', ':Neotree<CR>')

