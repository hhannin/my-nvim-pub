-- 设置 <leader> 键为空格键
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- 配置同步系统剪贴板
vim.opt.clipboard = "unnamedplus"

-- 设置 Vim 的 completeopt 选项
vim.o.completeopt = "menuone,noselect"

-- 自动恢复光标位置
vim.cmd([[
  augroup last_position
    autocmd!
    autocmd BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \   exe "normal! g'\"" |
      \ endif
  augroup END
]])
