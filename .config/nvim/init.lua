--vim.api.nvim_create_autocmd("set nohlsearch")
vim.cmd("set nohlsearch")

vim.g.mapleader = " "
vim.wo.relativenumber = true
vim.cmd("set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175")

vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.showtabline = 2
vim.opt.clipboard = "unnamedplus"
vim.opt.mouse = "a"

-- sudo apt-get install ripgrep
-- sudo apt-get install python3-pip
-- sudo apt-get install python3.10-env

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

require("lazy").setup("plugins")

--:CheckHealth
--
require("configs.auto_complete_golang")
require("configs.keybinds")
