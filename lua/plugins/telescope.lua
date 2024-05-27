return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-fzf-native.nvim", -- 提高搜索速度的插件
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        -- 默认配置选项
        mappings = {
          i = {
            ["<esc>"] = actions.close, -- 让 Esc 键在插入模式关闭窗口
          },
        },
      },
      pickers = {
        find_files = {
          theme = "ivy", -- 直接在 pickers 中指定主题
          layout_config = {
            height = 0.4, -- 设置 Ivy 主题的高度为 25% 屏幕高度
            prompt_position = "bottom", -- 将提示符放置在底部
            preview_cutoff = 100000, -- 禁用预览框
          },
        },
        live_grep = {
          theme = "ivy", -- 直接在 pickers 中指定主题
          layout_config = {
            height = 0.4, -- 设置 Ivy 主题的高度为 25% 屏幕高度
            prompt_position = "bottom", -- 将提示符放置在底部
          },
        },
        buffers = {
          theme = "ivy", -- 直接在 pickers 中指定主题
        },
        help_tags = {
          theme = "ivy", -- 直接在 pickers 中指定主题
        },
      },
    })

    -- 加载 telescope-fzf-native 扩展
    telescope.load_extension("fzf")
  end,
}
