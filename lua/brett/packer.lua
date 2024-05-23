-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- To run this file type :so to source the file then type :PackerSync to update the files

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

--This is the telescope plugin
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.4',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  --This installs catpuccin colorscheme
  use { "catppuccin/nvim", as = "catppuccin" }
  -- This installs tresitter plugin
  use ({'nvim-treesitter/nvim-treesitter', run = ":TSUpdate"})
  -- This installs tresitter playground
  use{'nvim-treesitter/playground'}
  -- This installs harpoon plugin
    use {"nvim-lua/plenary.nvim"} -- don't forget to add this one if you don't have it yet!
    use {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        requires = { {"nvim-lua/plenary.nvim"} }
    }
  --This installs undotreee
  use{'mbbill/undotree'}
  -- This iinstalls fugitive plugin
  use{'tpope/vim-fugitive'}
  --This installs formater.nvim
  -- Removed this so that I am forced to work with better practices
  -- use {'mhartington/formatter.nvim'}
  -- This installs lsp-zero
  use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  requires = {
    --- Uncomment these if you want to manage LSP servers from neovim
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},
    -- LSP Support
    {'neovim/nvim-lspconfig'},
    -- Autocompletion
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/cmp-buffer'},
    {'hrsh7th/cmp-path'},
    {'hrsh7th/cmp-cmdline'},
    -- Need to read more into snippets
    {'L3MON4D3/LuaSnip'},
    {'saadparwaiz1/cmp_luasnip'},
  }
}
-- This installs vim commentary
    use('tpope/vim-commentary')
-- This installs emmett for vim
    use('mattn/emmet-vim')
--This installs vim tmux navigator that will allow you to use vim keybindings for tmux
    use{'christoomey/vim-tmux-navigator'}
end)
