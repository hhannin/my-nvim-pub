-- Telescope 快捷键映射
vim.api.nvim_set_keymap('n', '<leader>ff', "<cmd>Telescope find_files<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fg', "<cmd>Telescope live_grep<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fb', "<cmd>Telescope buffers<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fh', "<cmd>Telescope help_tags<cr>", { noremap = true, silent = true })

-- nvim-cmp 快捷键映射 (示例，假设需要单独配置的快捷键)
-- vim.api.nvim_set_keymap('i', '<C-Space>', "cmp#complete()", { expr = true, noremap = true, silent = true })
-- vim.api.nvim_set_keymap('i', '<CR>', "cmp#confirm({ select = true })", { expr = true, noremap = true, silent = true })

