vim.g.mapleader = " "
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
require("lazy").setup({
  "folke/which-key.nvim",
  { "folke/neoconf.nvim", cmd = "Neoconf" },
  "folke/neodev.nvim",
  'nvim-lua/plenary.nvim',
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    dependencies = { 
      'nvim-lua/plenary.nvim' 
    },
    {
      "nvim-telescope/telescope-fzf-native.nvim", 
      build = "make" 
    },
    "nvim-tree/nvim-web-devicons",
  },
  { 
    'nvim-treesitter/nvim-treesitter', 
    build = ':TSUpdate' 
  },
  { 
    "ellisonleao/gruvbox.nvim", 
    priority = 1000 , 
    config = true, 
    opts = ...
  },
  "mbbill/undotree",
  "tpope/vim-fugitive" ,
  {
    "stevearc/dressing.nvim", 
    event = "VeryLazy",
  },

  -- depedencies for cmp
  {
    "L3MON4D3/LuaSnip",
    version = "v2.1",
    build = "make install_jsregexp"
  },
  'saadparwaiz1/cmp_luasnip',
  'rafamadriz/friendly-snippets',
  { 
    "hrsh7th/nvim-cmp", 
    event = "InsertEnter",
    depedencies = {
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      {
        "L3MON4D3/LuaSnip",
        version = "v2.1",
        build = "make install_jsregexp"
      },
      'saadparwaiz1/cmp_luasnip',
      'rafamadriz/friendly-snippets',
    },
  },

  -- Mason
  'williamboman/mason-lspconfig.nvim',
  {
    'williamboman/mason.nvim',
    depedencies = {
      'williamboman/mason-lspconfig.nvim',
    },
  },
  -- LSP
  'antosha417/nvim-lsp-file-operations',
  'hrsh7th/cmp-nvim-lsp',
  {
    'neovim/nvim-lspconfig',
    event = { "BufReadPre", "BufNewFile" },
    depedencies = {
      'hrsh7th/cmp-nvim-lsp',
      {
        'antosha417/nvim-lsp-file-operations',
        config = true,
      },
    },
  },
})
