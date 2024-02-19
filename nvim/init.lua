-- Sources the local "vimrc" aka original init.vim -- 

local vimrc = vim.fn.stdpath("config") .. "/vimrc.vim"
vim.cmd.source(vimrc)

vim.cmd("set number")
vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set expandtab")
vim.cmd("set mouse=a")
vim.cmd("set clipboard+=unnamedplus")

-- Checks for Lazy package manager. --
-- Type :Lazy to launch package manager. --

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

local plugins = {
{ "ellisonleao/gruvbox.nvim", name = "gruvbox", priority = 1000 , config = true, opts = ...}
}
local opts = {}

require("lazy").setup(plugins, opts)

require("gruvbox").setup()
vim.cmd.colorscheme "gruvbox"
