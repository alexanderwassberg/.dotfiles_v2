local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'nvim-lua/plenary.nvim'

  -- Find Files
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'brooth/far.vim'
  use 'kyazdani42/nvim-tree.lua'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- Status Bar
  use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }

  -- LSP Stuff
  use { 'neoclide/coc.nvim', branch = 'release' }

  -- Git
  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim'

  -- Elm
  use 'andys8/vim-elm-syntax'
  use 'elmcast/elm-vim'

  -- Terminal
  use 'voldikss/vim-floaterm'

  -- Apperance
  use 'kyazdani42/nvim-web-devicons'
  use 'glepnir/dashboard-nvim'

  -- Color Schemes
  use 'rebelot/kanagawa.nvim'
end)
