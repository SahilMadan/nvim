return {
  {
    "catppuccin/nvim",
    enabled = true,
    lazy = false, -- Load the theme during startup
    priority = 1000, -- Make sure it loads before other plugins
    opts = {
      -- The default flavor is "latte"
      -- Other options are "frappe", "macchiato", "mocha"
      flavor = "macchiato",

      -- Enable this to have a transparent background
      transparent_background = true,

      -- Enable italics for comments and keywords
      styles = {
        comments = { "italic" },
        keywords = { "italic" },
      },

      -- Apply the theme to various plugins for a cohesive look
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = true,
        treesitter = true,
        -- Add more plugin integrations here as needed
      },
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)
      -- Load the colorscheme
      vim.cmd.colorscheme "catppuccin"
    end,
  },
}
