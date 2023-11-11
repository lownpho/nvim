-- This file contains the configuration for lazy.nvim
-- All plugins are required here and configured elsewhere

-- bootstrap lazy (copypaste from github)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- lazy config
-- Configs go here
require("lazy").setup({
  require("plugins.other_stuff"),
  require("plugins.neotree"),
  require("plugins.everforest")
})

