vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Better window navigation
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Resize with arrows when using multiple windows
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>", { desc = "Horizontal resize (shrink)" })
vim.keymap.set("n", "<C-down>", ":resize +2<CR>", { desc = "Horizontal resize (enlarge)" })
vim.keymap.set("n", "<C-right>", ":vertical resize -2<CR>", { desc = "Vertical resize (shrink)" })
vim.keymap.set("n", "<C-left>", ":vertical resize +2<CR>", { desc = "Vertical resize (shrink)" })

-- Navigate buffers, commented as it can be useful
-- Add description before decommenting!
-- vim.keymap.set("n", "<tab>", ":bnext<cr>")
-- vim.keymap.set("n", "<s-tab>", ":bprevious<cr>")
-- vim.keymap.set("n", "<leader>h", ":nohlsearch<cr>")

-- Neotree stuff
-- TODO: moved to its own plugin, remove me!
-- vim.keymap.set("n", "<C-n>", ":Neotree toggle<CR>")
