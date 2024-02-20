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

return require("lazy").setup({
  {"nvim-lua/popup.nvim"},
  {"nvim-lua/plenary.nvim"},
  {"jiangmiao/auto-pairs"},
  {"akinsho/bufferline.nvim",version="*",dependencies="nvim-tree/nvim-web-devicons"},
  {"scrooloose/nerdcommenter"},
  {"ethanholz/nvim-lastplace"},
  {"nvim-tree/nvim-tree.lua"},

  {"neovim/nvim-lspconfig"},
  {"hrsh7th/nvim-cmp"}, -- Autocompletion plugin
  {"hrsh7th/cmp-nvim-lsp"}, -- LSP source for nvim-cmp
  {"hrsh7th/cmp-buffer"},
  {"hrsh7th/cmp-path"},
  {"hrsh7th/cmp-cmdline"},
  {"hrsh7th/cmp-nvim-lua"},
  {"f3fora/cmp-spell"},
  {"hrsh7th/cmp-calc"},
  {"saadparwaiz1/cmp_luasnip"},
  {"L3MON4D3/LuaSnip"},
  {"rafamadriz/friendly-snippets"},
  {"onsails/lspkind.nvim"},
})
