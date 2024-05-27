return {
  'hrsh7th/nvim-cmp',  -- 代码补全
  dependencies = {
    'hrsh7th/cmp-nvim-lsp',  -- LSP 源
    'hrsh7th/cmp-buffer',    -- 缓冲区源
  },
  config = function()
    local cmp = require('cmp')
    cmp.setup({
      mapping = {
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
      },
      sources = {
        { name = 'nvim_lsp' },
        { name = 'buffer' },
      },
    })
  end
}

