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
    use 'neovim/nvim-lspconfig'
    use 'onsails/lspkind-nvim'

    -- Completion
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/cmp-nvim-lsp'
    use({"L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*"})

    -- Git
    use 'lewis6991/gitsigns.nvim'
    use 'dinhhuy258/git.nvim'

    -- Elm
    use 'andys8/vim-elm-syntax'
    use 'elmcast/elm-vim'
    use 'preservim/tagbar'
    use 'bitterjug/vim-tagbar-ctags-elm'

    -- Terminal
    use 'voldikss/vim-floaterm'

    -- Apperance
    use 'kyazdani42/nvim-web-devicons'
    use 'glepnir/dashboard-nvim'
    use 'xiyaowong/nvim-transparent'
    use {'romgrk/barbar.nvim', wants = 'nvim-web-devicons'}

    -- Color Schemes
    use 'rebelot/kanagawa.nvim'
    use 'joshdick/onedark.vim'
    use 'NLKNguyen/papercolor-theme'
    use { 'embark-theme/vim', as = 'embark' }
    use 'sainnhe/gruvbox-material'
    use 'Shatur/neovim-ayu'
    use { "catppuccin/nvim", as = "catppuccin" }

    -- Markdown Preview
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })

    use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

end)
