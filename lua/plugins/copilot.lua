return {
  -- GitHub Copilot
  {
    "github/copilot.vim",
    -- Ensure Copilot starts up with Neovim
    event = "VimEnter",
    config = function()
      -- Optional: Disable Copilot by default
      -- vim.g.copilot_enabled = 0

      -- Mapping to accept a Copilot suggestion
      -- The default is <Tab>, but some people prefer <C-l> or another key.
      vim.g.copilot_no_tab_map = true -- Disable the default <Tab> mapping
      vim.api.nvim_set_keymap("i", "<C-j>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
    end,
  },

  -- Copilot Chat
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "github/copilot.vim" },
      { "nvim-lua/plenary.nvim" }, -- Used for curl requests
    },
    opts = {
      -- Use a rounded border for the chat window
      border = "rounded",
    },
    -- Set up keymaps for chat after the plugin loads
    config = function(_, opts)
      local chat = require("CopilotChat")
      chat.setup(opts)

      -- Keymaps for interacting with Copilot Chat
      vim.keymap.set("n", "<leader>cc", "<cmd>CopilotChat<CR>", { desc = "CopilotChat - Open" })
      vim.keymap.set("v", "<leader>cc", "<cmd>CopilotChat<CR>", { desc = "CopilotChat - Open with selection" })
      vim.keymap.set("n", "<leader>cq", "<cmd>CopilotChat q<CR>", { desc = "CopilotChat - Quick chat" })
      vim.keymap.set("n", "<leader>ce", "<cmd>CopilotChat explain<CR>", { desc = "CopilotChat - Explain code" })
      vim.keymap.set("n", "<leader>ct", "<cmd>CopilotChat tests<CR>", { desc = "CopilotChat - Generate tests" })
    end,
  },
}
