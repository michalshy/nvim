vim.g.mapleader = " " -- Set leader key before Lazy

require("michibo.lazy_init")
require('config.telescope')
require('config.completions')
require('config.lsp_config')

vim.lsp.enable('pyright')
vim.lsp.enable('rust_analyzer')
vim.lsp.enable('clangd')
vim.lsp.enable('lua-language-server')

vim.opt.number = true 
vim.opt.relativenumber = true
vim.opt.signcolumn = 'yes'
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.softtabstop = 4

vim.diagnostic.config({ 
	virtual_text = true,
	update_in_insert = true
})

vim.cmd[[colorscheme tokyonight]]
