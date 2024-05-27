-- 自动安装 Lazy.nvim 插件管理器
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
        "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- 最新稳定版本
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- 加载Basic Config
require('config')

-- 加载插件配置
require('plugins')

-- 加载快捷键映射
require('keybindings')
