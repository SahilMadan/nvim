return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Fuzzy search
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }

  -- Treesitter: Prettier highlighting
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- General language config neovim's built-in lsp
  use {'neovim/nvim-lspconfig'}

  -- Autocompletion
  use {'hrsh7th/nvim-compe'}

  -- Status Line
  --  use {
  --    'glepnir/galaxyline.nvim',
  --    branch = 'main',
  --    -- your statusline
  --    config = function() require'my_statusline' end,
  --    -- some optional icons
  --    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  --  }
end)

