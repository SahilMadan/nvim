return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  keys = {
    {
      "<C-n>",
      function()
        -- Check if a file is open and saved to disk
        local current_file = vim.fn.expand('%')
        if current_file ~= '' and vim.fn.filereadable(current_file) == 1 then
          -- If a file is open, use NvimTreeFindFile to reveal it
          vim.cmd("NvimTreeFindFile")
        else
          -- If no file is open, just toggle the tree at the CWD
          vim.cmd("NvimTreeToggle")
        end
      end,
      desc = "Toggle File Explorer (smart)",
    },
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
