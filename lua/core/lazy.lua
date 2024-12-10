-- This file contains the configuration for lazy.nvim
-- All plugins are required here and configured elsewhere

-- bootstrap lazy
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		error("Error cloning lazy.nvim:\n" .. out)
	end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- lazy config
-- Configs go here
-- Weird brace work but allow more imports
require("lazy").setup({
	-- plugins that don't require config for now
	"tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically
	{ import = "plugins" },
	{ import = "lsp" },
}, {

	-- Check for updates but don't notify me
	checker = {
		enabled = true,
		notify = false,
	},
	change_detection = {
		notify = false,
	},
})
