return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  keys = {
    -- Your keymap to toggle NvimTree
    { "<C-n>", "<cmd>NvimTreeToggle<cr>", desc = "Toggle File Explorer" },
  },
  opts = {
    -- Disable the default netrw file explorer
    disable_netrw = true,
    hijack_netrw = true,

    -- Git integration
    git = {
      enable = true,
      ignore = false,
    },

    -- UI settings
    view = {
      width = 30,
      side = "left",
    },

    -- Icon settings (requires a Nerd Font)
    renderer = {
      group_empty = true,
      icons = {
        show = {
          file = true,
          folder = true,
          folder_arrow = true,
          git = true,
        },
      },
    },

    -- Hide certain files and folders
    filters = {
      dotfiles = true,
      custom = { ".DS_Store" },
    },
  },
}
