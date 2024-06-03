-- ~/.config/nvim/lua/plugins/nvim-treesitter.lua

return {
  {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate", -- 安装后自动更新 Tree-sitter 解析器
    config = function()
      require("nvim-treesitter.configs").setup({
        -- 一些需要解析的语言列表
        ensure_installed = { "c", "cpp", "lua", "python" }, -- 添加你需要的其他语言
        highlight = {
          enable = true, -- false 将禁用整个扩展
          additional_vim_regex_highlighting = false,
        },
        indent = {
          enable = true,
        },
      })
    end,
  },
}
