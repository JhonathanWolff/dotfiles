vim.g.mapleader = " "
vim.wo.relativenumber = true

vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.showtabline = 2
vim.opt.clipboard = "unnamedplus"
vim.opt.mouse = "a"

-- sudo apt-get install ripgrep
-- sudo apt-get install python3-pip
-- sudo apt-get install python3.10-env
-- nao sei se precisa
-- sudo apt-get install npm  (for pyright)
-- sudo apt-get install jedi
-- sudo apt-get install autopep8
-- pip install -U jedi-language-server

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

vim.keymap.set("n", "<leader>e", ":Neotree<CR>")

-- init.lua:
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
vim.keymap.set("n", "<leader>rr", vim.lsp.buf.format, {})
vim.keymap.set("n", "<leader>vv", ":vsplit<CR>:wincmd l<CR>")
vim.keymap.set("n", "<C-w>", ":q<CR>")

vim.keymap.set("n", "<leader>w", "vi(")
vim.keymap.set("n", "<leader>a", "vi{")
vim.keymap.set("n", "<leader>x", "vi<")

vim.keymap.set("n", "<leader>s", 'vi"')
vim.keymap.set("n", "J", "}")
vim.keymap.set("n", "K", "{")

vim.keymap.set("n", "<leader>h", "_")
vim.keymap.set("n", "<leader>l", "$")
vim.keymap.set("v", "p", "pgvy")
vim.keymap.set("v", ">", ">gv")
vim.keymap.set("v", "<", "<gv")

vim.keymap.set("n", "zq", ":wq<CR>")
vim.keymap.set("n", "zs", ":w<CR>")

vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

vim.keymap.set("n", "<S-tab>", ":bprev<CR>")
vim.keymap.set("n", "<tab>", ":bnext<CR>")

vim.keymap.set("i", "jk", "<esc>")

--opt terminal
vim.keymap.set("n", "<leader>tt", ":ToggleTerm l<CR>")

-- debugger keymap
vim.keymap.set("n", "<F5>", function()
	require("dap").continue()
end)
vim.keymap.set("n", "<F10>", function()
	require("dap").step_over()
end)
vim.keymap.set("n", "<F11>", function()
	require("dap").step_into()
end)
vim.keymap.set("n", "<F12>", function()
	require("dap").step_out()
end)
vim.keymap.set("n", "<Leader>b", function()
	require("dap").toggle_breakpoint()
end)
vim.keymap.set("n", "<Leader>B", function()
	require("dap").set_breakpoint()
end)
vim.keymap.set("n", "<Leader>lp", function()
	require("dap").set_breakpoint(nil, nil, vim.fn.input("Log point message: "))
end)
vim.keymap.set("n", "<Leader>dr", function()
	require("dap").repl.open()
end)
vim.keymap.set("n", "<Leader>dl", function()
	require("dap").run_last()
end)
