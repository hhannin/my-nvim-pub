-- 配置 Lazy.nvim
require("lazy").setup({
  -- 加载其他插件配置文件
  { import = "plugins.lspconfig" },
  { import = "plugins.cmp" },
  { import = "plugins.telescope" },
  { import = "plugins.colorscheme" },
  { import = "plugins.formatters" },
  { import = "plugins.nvim-tree" },
  { import = "plugins.lualine" },
  { import = "plugins.nvim-treesitter" },
})

-- vim.cmd("colorscheme gruvbox")
-- vim.cmd("colorscheme tokyonight-day")

vim.cmd("colorscheme gruvbox")
