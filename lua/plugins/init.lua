-- 配置 Lazy.nvim
require('lazy').setup({
  -- 加载其他插件配置文件
  { import = 'plugins.lspconfig' },
  { import = 'plugins.cmp' },
  { import = 'plugins.telescope' },
  { import = 'plugins.colorscheme' },
  { import = 'plugins.formatters' },
})

vim.cmd('colorscheme gruvbox')

