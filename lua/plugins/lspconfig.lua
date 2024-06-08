return {
  "neovim/nvim-lspconfig", -- LSP 配置
  config = function()
    local lspconfig = require("lspconfig")
    lspconfig.clangd.setup({
      cmd = {
        "clangd",
        "--background-index",
        "--pch-storage=memory",
        "--clang-tidy",
        "--completion-style=detailed",
        "--all-scopes-completion",
        "--cross-file-rename",
        "--header-insertion=iwyu",
      },
      handlers = {
        ["textDocument/publishDiagnostics"] = vim.lsp.with(
          vim.lsp.diagnostic.on_publish_diagnostics,
          {
            -- 显示的诊断数
            virtual_text = true, -- 不显示虚拟文本
            signs = true, -- 在行号栏显示标志
            update_in_insert = true, -- 插入模式下不更新
          }
        ),
      },
      -- cmd = { "clangd", "--compile-commands-dir=build" }, -- 指定 compile_commands.json 的目录
    }) -- 配置 clangd 作为 LSP 服务器
    -- LSP 快捷键配置
    local map = vim.api.nvim_set_keymap
    local opts = { noremap = true, silent = true }

    -- 代码跳转
    map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
    map("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
    map("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)

    -- 代码操作
    map("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
    map("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
    map("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
    map("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)

    -- 代码操作
    map("n", "<leader>ac", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)

    -- 诊断信息
    map("n", "<leader>e", "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>", opts)
    map("n", "[d", "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>", opts)
    map("n", "]d", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", opts)
  end,
}
