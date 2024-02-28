-- Check if lazy.nvim is installed, if not, install it
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

-- Declare plugins and opts
local plugins = {
    -- color schemes
    {"catppuccin/nvim", name="catppuccin", priority=1000},
    -- telescope
    {"nvim-telescope/telescope.nvim", name="telescope", tag="0.1.5", dependencies={'nvim-lua/plenary.nvim'}},
    {"nvim-telescope/telescope-ui-select.nvim"},
    -- treesitter
    {"nvim-treesitter/nvim-treesitter", name="nvim-treesitter", run=":TSUpdate"},
    {"nvim-treesitter/playground", name="playground"},
    -- harpoon
    {"theprimeagen/harpoon", name="harpoon", dependencies={'nvim-lua/plenary.nvim'}},
    -- undotree
    {"mbbill/undotree", name="undotree"},
    -- lsp
    {"williamboman/mason.nvim",},
    {"williamboman/mason-lspconfig.nvim"},
    {"neovim/nvim-lspconfig", },


}
local opts = {
  -- Your configuration comes here
  -- or leave it empty to use the default settings
  -- refer to the configuration section below
}


-- Load lazy.nvim
require("lazy").setup(plugins, opts)

