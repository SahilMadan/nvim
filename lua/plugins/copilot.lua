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
      border = "rounded",
      -- This is still useful for general chat context
      context = "buffers",
    },
    config = function(_, opts)
      local chat = require("CopilotChat")
      chat.setup(opts)

      -- General chat commands
      vim.keymap.set("n", "<leader>cc", "<cmd>CopilotChat<CR>", { desc = "CopilotChat - Open" })
      vim.keymap.set("n", "<leader>cq", "<cmd>CopilotChat q<CR>", { desc = "CopilotChat - Quick chat" })

      -- THE FIX: Use dedicated commands for actions on the current buffer
      vim.keymap.set("n", "<leader>ce", "<cmd>CopilotChatBuffer explain<CR>", { desc = "CopilotChat - Explain buffer" })
      vim.keymap.set("n", "<leader>ct", "<cmd>CopilotChatBuffer tests<CR>", { desc = "CopilotChat - Generate tests for buffer" })

      -- THE FIX: Use dedicated command for actions on a visual selection
      vim.keymap.set("v", "<leader>ce", "<cmd>CopilotChatVisual explain<CR>", { desc = "CopilotChat - Explain selection" })
    end,
  },
}
