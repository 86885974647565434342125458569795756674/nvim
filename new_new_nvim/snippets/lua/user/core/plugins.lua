local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Example using a list of specs with the default options
vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

require("lazy").setup({
    {
        "folke/tokyonight.nvim",
        lazy = false, -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
          -- load the colorscheme here
          vim.cmd([[colorscheme tokyonight-storm]])
        end,
    },
    {"nvim-treesitter/nvim-treesitter",build = ":TSUpdate",},
    {"p00f/nvim-ts-rainbow"},

    {"hrsh7th/nvim-cmp"},

    {"hrsh7th/cmp-nvim-lsp"},
    {"neovim/nvim-lspconfig"},
    
    {"saadparwaiz1/cmp_luasnip"},
    {"L3MON4D3/LuaSnip"},
    {"rafamadriz/friendly-snippets"},

    {"hrsh7th/cmp-buffer"},
    {"hrsh7th/cmp-path"},
    {"hrsh7th/cmp-cmdline"},
    {"f3fora/cmp-spell"},
    {"hrsh7th/cmp-nvim-lua"},

    {"williamboman/mason.nvim"},
    {"williamboman/mason-lspconfig.nvim"},

    {"nvim-tree/nvim-tree.lua"},
    {"akinsho/bufferline.nvim"},
    {"jiangmiao/auto-pairs"},
    {"numToStr/Comment.nvim"},
    {"nvim-telescope/telescope.nvim",tag='0.1.5'},
    {"nvim-lua/plenary.nvim"},
    {"ethanholz/nvim-lastplace"},   
})

