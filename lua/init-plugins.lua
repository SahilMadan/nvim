return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Fuzzy search
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}},
    config = require'plugins.telescope'
  }

  -- Treesitter: Prettier highlighting
  use {
    'nvim-treesitter/nvim-treesitter',
    branch = '0.5-compat',
    run = ':TSUpdate',
    config = require'plugins.treesitter'
  }

  -- General language config neovim's built-in lsp
  use {
    'neovim/nvim-lspconfig',
    config = require'plugins.lspconfig'
  }

  -- Autocompletion
  use {
    'hrsh7th/nvim-compe',
    config = require'plugins.compe'
  }

  -- Git Integration
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    config = require'plugins.gitsigns'
  }

  -- Color highlighter
  use {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require'colorizer'.setup{
       'css';
       'javascript';
        html = {
          mode = 'foreground';
        }
      }
    end
  }

  -- Colorscheme: Tokyo Night
  use {'folke/tokyonight.nvim'}

  -- Tabline
  use {
    'romgrk/barbar.nvim',
    requires = {
      'kyazdani42/nvim-web-devicons'
    },
    config = require'plugins.barbar'
  }

  -- Commenting text in/out
  use {
    'b3nj5m1n/kommentary',
    config = require'plugins.kommentary'
  }

  -- Indent highlighting
  use {
    'lukas-reineke/indent-blankline.nvim',
    event = 'BufRead',
    config = require'plugins.indent-blankline'
  }

  -- File Explorer
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons'
    },
    config = require'plugins.nvim-tree'
  }
end)
