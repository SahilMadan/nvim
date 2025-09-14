return {
  {
    "folke/tokyonight.nvim",
    lazy = false, -- make sure the theme is loaded during startup
    priority = 1000, -- load before all other plugins
    opts = {
      -- The default style is "storm"
      -- Other options are "night", "moon", and "day"
      style = "storm",

      -- Enable this to have a transparent background
      transparent = true,

      -- Enable italics
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},
      },
    },
    config = function(_, opts)
      require("tokyonight").setup(opts)
      -- Load the colorscheme
      vim.cmd.colorscheme "tokyonight"
    end,
  },
}
