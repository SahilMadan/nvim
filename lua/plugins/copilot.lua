return {
  -- GitHub Copilot (still required)
  {
    "github/copilot.vim",
    event = "VimEnter",
    config = function()
      vim.g.copilot_no_tab_map = true
      -- Windows
      vim.api.nvim_set_keymap("i", "<C-_>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
      -- Linux
      vim.api.nvim_set_keymap("i", "<C-/>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
    end,
  },

  -- CodeCompanion from olimorris
  {
    "olimorris/codecompanion.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    opts = {
      -- To use a model like 'claude-sonnet-4', you must configure
      -- a provider here. The default is 'copilot'.
      -- providers = {
      --   openai = { ... },
      -- }
    },
    keys = {
      -- Toggles the chat window
      { "<leader>cc", mode = { "n", "v" }, function() require("codecompanion").toggle() end,                       desc = "Companion: Toggle" },
      -- Runs a specific prompt on the visual selection
      { "<leader>ce", mode = { "v" },      function() require("codecompanion").prompt({ prompt = "Explain" }) end, desc = "Companion: Explain" },
      { "<leader>cf", mode = { "v" },      function() require("codecompanion").prompt({ prompt = "Fix" }) end,     desc = "Companion: Fix" },
      { "<leader>cr", mode = { "v" },      function() require("codecompanion").prompt({ prompt = "Review" }) end,  desc = "Companion: Review" },
      { "<leader>ct", mode = { "v" },      function() require("codecompanion").prompt({ prompt = "Tests" }) end,   desc = "Companion: Tests" },
      -- Lists available prompts via Telescope
      { "<leader>cp", mode = { "n" },      "<Cmd>Telescope codecompanion prompts<CR>",                             desc = "Companion: Prompts" },
    },
  },
}
