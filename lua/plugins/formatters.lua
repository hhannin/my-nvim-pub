-- lua/plugins/formatters.lua
return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local null_ls = require("null-ls")

      -- 这里配置你想要的格式化工具
      null_ls.setup({
        sources = {
          null_ls.builtins.formatting.prettier, -- JavaScript/TypeScript/CSS/HTML 等
          null_ls.builtins.formatting.black, -- Python
          null_ls.builtins.formatting.clang_format, -- C/C++/Objective-C
          null_ls.builtins.formatting.stylua.with({
            extra_args = {
              "--config-path",
              vim.fn.expand("~/.config/nvim/stylua.toml"),
            },
          }),
          -- 添加 Shell 格式化工具
          null_ls.builtins.formatting.shfmt.with({
            extra_args = { "-i", "2" }, -- 设置缩进宽度为 4
          }),
          -- 你可以在这里添加更多的格式化工具
        },
        -- 设置自动格式化
        on_attach = function(client, bufnr)
          if client.server_capabilities.documentFormattingProvider then
            vim.cmd([[
              augroup LspFormatting
                autocmd! * <buffer>
                autocmd BufWritePre <buffer> lua vim.lsp.buf.format()
              augroup END
            ]])
          end
        end,
      })
    end,
  },
}
