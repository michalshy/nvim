vim.lsp.enable('pyright')
vim.lsp.enable('rust_analyzer')
vim.lsp.enable('clangd')
vim.lsp.enable('lua-language-server')

vim.diagnostic.config({ 
	virtual_text = true,
	update_in_insert = true
})
