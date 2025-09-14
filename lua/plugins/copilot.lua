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
      -- THE FIX (Part 1): Set default context to all open buffers
      context = "buffers",
    },
    config = function(_, opts)
      local chat = require("CopilotChat")
      chat.setup(opts)

      -- Keymaps for interacting with Copilot Chat
      vim.keymap.set("n", "<leader>cc", "<cmd>CopilotChat<CR>", { desc = "CopilotChat - Open" })
      vim.keymap.set("v", "<leader>cc", "<cmd>CopilotChat<CR>", { desc = "CopilotChat - Open with selection" })
      vim.keymap.set("n", "<leader>cq", "<cmd>CopilotChat q<CR>", { desc = "CopilotChat - Quick chat" })

      -- THE FIX (Part 2): Update specific commands to target the current buffer
      vim.keymap.set("n", "<leader>ce", "<cmd>CopilotChat explain #buffer<CR>", { desc = "CopilotChat - Explain code" })
      vim.keymap.set("n", "<leader>ct", "<cmd>CopilotChat tests #buffer<CR>", { desc = "CopilotChat - Generate tests" })
    end,
  },
}
