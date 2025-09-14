return {
  -- GitHub Copilot
  {
    "github/copilot.vim",
    event = "VimEnter",
    config = function()
      vim.g.copilot_no_tab_map = true
      vim.api.nvim_set_keymap("i", "<C-j>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
    end,
  },

  -- Copilot Chat
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "github/copilot.vim" },
      { "nvim-lua/plenary.nvim" },
    },
    opts = {
      auto_insert_mode = true,
      debug = true,
      model = 'claude-sonnet-4',

      selection = function(source)
          local select = require("CopilotChat.select")
          return select.visual(source) or select.buffer(source)
      end
    },

    keys = {
      { "cc", mode = { "n", "v" }, "<Cmd>CopilotChat<CR>",       desc = "Open Copilot Chat" },
      { "ce", mode = { "n", "v" }, "<Cmd>CopilotChatExplain<CR>", desc = "Explain this code" },
      { "cf", mode = { "n", "v" }, "<Cmd>CopilotChatFix<CR>",    desc = "Fix this code" },
      { "cm", mode = { "n", "v" }, "<Cmd>CopilotChatModels<CR>", desc = "List Copilot Chat models" },
      { "cp", mode = { "n", "v" }, "<Cmd>CopilotChatPrompts<CR>", desc = "List Copilot Chat prompts" },
      { "cr", mode = { "n", "v" }, "<Cmd>CopilotChatReview<CR>", desc = "Review this code" },
      { "ct", mode = { "n", "v" }, "<Cmd>CopilotChatTest<CR>",   desc = "Write tests for this code" },
    }
  },
}
