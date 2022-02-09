local cmp = require("cmp")
local luasnip = require("luasnip")
require("luasnip.loaders.from_snipmate").load() -- Custom snippet(in snippets folder) for unsupported languages
require("luasnip.loaders.from_vscode").lazy_load() -- Default Snippets from rafamadriz/friendly-snippets

cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = {
    ["<M-k>"] = function(fallback)
      if luasnip.jumpable(1) then
        luasnip.jump(1)
      else
        fallback()
      end
    end,
    ["<M-j>"] = function(fallback)
      if luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end,
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
    ["<C-e>"] = cmp.mapping.close(),
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<C-j>"] = function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        fallback()
      end
    end,
    ["<C-k>"] = function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      else
        fallback()
      end
    end,
  },
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "luasnip" },
    { name = "buffer", keyword_length = 4 },
  }),
})
