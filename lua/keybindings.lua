-- 按键映射函数
local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

-- 在当前行的下一行粘贴内容
map("n", "p", "o<Esc>p", default_opts)

map("t", "<Esc>", [[<C-\><C-n>]], default_opts) -- 从终端模式返回正常模式

-- 按 Esc 取消搜索高亮
map("n", "<Esc>", ":nohlsearch<CR>", default_opts)

-- 窗口管理
map("n", "<leader>sv", ":vsplit<CR>", default_opts) -- 垂直分屏
map("n", "<leader>sh", ":split<CR>", default_opts) -- 水平分屏
map("n", "<leader>sc", "<C-w>c", default_opts) -- 关闭当前分屏
map("n", "<leader>so", "<C-w>o", default_opts) -- 关闭其他分屏

-- 窗口切换
map("n", "<C-h>", "<C-w>h", default_opts)
map("n", "<C-j>", "<C-w>j", default_opts)
map("n", "<C-k>", "<C-w>k", default_opts)
map("n", "<C-l>", "<C-w>l", default_opts)

-- 调整窗口大小
map("n", "<C-Left>", ":vertical resize -2<CR>", default_opts)
map("n", "<C-Right>", ":vertical resize +2<CR>", default_opts)
map("n", "<C-Up>", ":resize +2<CR>", default_opts)
map("n", "<C-Down>", ":resize -2<CR>", default_opts)

-- 终端
map("n", "<leader>t", ":terminal<CR>", default_opts)
-- 打开一个占据屏幕四分之一高度的终端窗口，并定位在底部
map(
  "n",
  "<leader>tb",
  ":botright split | resize " .. math.floor(vim.o.lines * 0.25) .. " | terminal<CR>",
  default_opts
)

-- Telescope 快捷键映射
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", default_opts)
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", default_opts)
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", default_opts)
map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", default_opts)

-- nvim-cmp 快捷键映射 (示例，假设需要单独配置的快捷键)
-- vim.api.nvim_set_keymap('i', '<C-Space>', "cmp#complete()", { expr = true, noremap = true, silent = true })
-- vim.api.nvim_set_keymap('i', '<CR>', "cmp#confirm({ select = true })", { expr = true, noremap = true, silent = true })

-- 目录树
map("n", "<leader>e", ":NvimTreeToggle<CR>", default_opts)
