return {
  "neovim/nvim-lspconfig", -- LSP 配置
  config = function()
    require("lspconfig").clangd.setup({}) -- 配置 clangd 作为 LSP 服务器
  end,
}
