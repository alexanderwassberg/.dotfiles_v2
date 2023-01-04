local status, packer = pcall(require, "packer")
if (not status) then
    print("Packer is not installed")
    return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'nvim-lua/plenary.nvim'
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }
    use 'lewis6991/gitsigns.nvim'
    use 'voldikss/vim-floaterm'
    use { 'nvim-telescope/telescope.nvim', tag = '0.1.0', requires = { {'nvim-lua/plenary.nvim'} } }
    use 'SirVer/ultisnips'
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }

    -- Elm Stuff
    use 'honza/vim-snippets'
    use 'tpope/vim-sleuth' -- Shiftwidth / Expandwidth
    use 'elmcast/elm-vim'

    -- Appearance
    use 'glepnir/dashboard-nvim'
    use 'xiyaowong/nvim-transparent'
    use 'rebelot/kanagawa.nvim'
    use 'nvim-tree/nvim-web-devicons'
    use 'morhetz/gruvbox'
    use 'sainnhe/everforest'
    use 'nanotech/jellybeans.vim'
    use({
        "dnlhc/glance.nvim",
        config = function()
            require('glance').setup({
                -- your configuration
            })
        end,
    })

    -- LSP Zero
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }

end)
