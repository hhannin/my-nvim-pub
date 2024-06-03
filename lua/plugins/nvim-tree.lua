return {
  {
    "kyazdani42/nvim-tree.lua",
    requires = {
      "kyazdani42/nvim-web-devicons", -- optional, for file icon
    },
    config = function()
      require("nvim-tree").setup({
        disable_netrw = true,
        hijack_netrw = true,
        open_on_setup = false,
        ignore_ft_on_setup = {},
        auto_close = true,
        open_on_tab = false,
        hijack_cursor = false,
        update_cwd = true,
        lsp_diagnostics = true,
        update_focused_file = {
          enable = true,
          update_cwd = true,
          ignore_list = {},
        },
        system_open = {
          cmd = nil,
          args = {},
        },
        view = {
          width = 40,
          height = 30,
          hide_root_folder = false,
          side = "right",
          auto_resize = true,
          mappings = {
            custom_only = false,
            list = {},
          },
          number = false,
          relativenumber = false,
        },
        git = {
          enable = true,
          ignore = false,
          timeout = 500,
        },
        actions = {
          open_file = {
            quit_on_open = false,
          },
        },
      })
    end,
  },
}
