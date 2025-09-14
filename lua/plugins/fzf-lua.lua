-- fzf-lua provides fuzzy search.
return {
  "ibhagwan/fzf-lua",
    -- Add keymaps here
  keys = {
    -- Keymap for files
    {
      "<C-p>",
      "<cmd>FzfLua files<cr>",
      desc = "Find Files",
    },
    -- keymap for livegrep
    {
      "<C-l>",
      "<cmd>FzfLua live_grep<cr>",
      desc = "Live Grep",
    },
    -- Ctrl+G now shows git status (modified files, etc.)
    {
      "<C-g>",
      "<cmd>FzfLua git_status<cr>",
      desc = "Git Status",
    },
  },
  opts = {
    oldfiles = {
      -- In Telescope, when I used <leader>fr, it would load old buffers.
      -- fzf lua does the same, but by default buffers visited in the current
      -- session are not included. I use <leader>fr all the time to switch
      -- back to buffers I was just in. If you missed this from Telescope,
      -- give it a try.
      include_current_session = true,
    },
    previewers = {
      builtin = {
        syntax_limit_b = 1024 * 100, -- 100KB
      },
    },
    grep = {
      -- One thing I missed from Telescope was the ability to live_grep and the
      -- run a filter on the filenames.
      -- Ex: Find all occurrences of "enable" but only in the "plugins" directory.
      -- With this change, I can sort of get the same behaviour in live_grep.
      -- ex: > enable --*/plugins/*
      -- I still find this a bit cumbersome. There's probably a better way of doing this.
      rg_glob = true, -- enable glob parsing
      glob_flag = "--iglob", -- case insensitive globs
      glob_separator = "%s%-%-", -- query separator pattern (lua): ' --'
    },
  },
}
