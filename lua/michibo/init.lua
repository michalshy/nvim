vim.g.mapleader = " " -- Set leader key before Lazy

require("michibo.lazy_init")
require('config.lsp')
require('config.cmp')
require('config.telescope')

vim.opt.number = true 
vim.opt.relativenumber = true
vim.opt.signcolumn = 'yes'
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.softtabstop = 4

vim.cmd[[colorscheme tokyonight]]
