local cmp = require("cmp")
local luasnip = require("luasnip")

cmp.setup({
    sources = {
        { name = "buffer" },
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "neorg" },
    },
    mapping = {
        ["<cr>"] = cmp.mapping.confirm({select = true}),
        ["<s-tab>"] = cmp.mapping.select_prev_item(),
        ["<tab>"] = cmp.mapping.select_next_item(),
    },
    formatting = {
        format = function(entry, item)
            item.menu = ({
                buffer = "[Buffer]",
                nvim_lsp = "[LSP]",
                luasnip = "[Snippet]",
                neorg = "[Neorg]",
            })[entry.source.name]

            return item
        end,
    },
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },
})