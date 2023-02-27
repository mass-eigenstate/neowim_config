-- Basic Settings
--
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.autoindent = true
vim.opt.textwidth = 80 -- wrap lines at 80 

vim.opttermguicolors = true

-- Set up the key remaps
--

vim.g.mapleader = ' ' -- set the mapleader to <space>

-- Set up lazy.vim
--
--

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

vim.cmd [[colorscheme nightfly]]
