return {
  {
    "lewis6991/gitsigns.nvim",
    event = "VeryLazy",
    opts = {
      -- Your simplified options from before
      signs = {
        add          = { text = '┃' },
        change       = { text = '┃' },
        delete       = { text = '_' },
        topdelete    = { text = '‾' },
        changedelete = { text = '~' },
        untracked    = { text = '┆' },
      },
      attach_to_untracked = false,
    },
    -- Keymaps are defined in the 'keys' table
    keys = {
      -- Hunk Navigation
      { "]c", function() require("gitsigns").next_hunk() end, desc = "Next Hunk" },
      { "[c", function() require("gitsigns").prev_hunk() end, desc = "Previous Hunk" },

      -- Hunk/Selection Actions
      -- These work in both Normal and Visual mode
      { "<leader>hs", function() require("gitsigns").stage_hunk() end, mode = {"n", "v"}, desc = "Stage Hunk/Selection" },
      { "<leader>hr", function() require("gitsigns").reset_hunk() end, mode = {"n", "v"}, desc = "Reset Hunk/Selection" },

      -- Buffer Actions
      { "S", function() require("gitsigns").stage_buffer() end, mode = "n", desc = "Stage Buffer" },
      { "R", function() require("gitsigns").reset_buffer() end, mode = "n", desc = "Reset Buffer" },

      -- Other Actions
      { "<leader>hd", function() require("gitsigns").diffthis("~") end, desc = "Diff This" },
      { "<leader>hb", function() require("gitsigns").blame_line({ full = true }) end, desc = "Blame Line" },
    },
  }
}

