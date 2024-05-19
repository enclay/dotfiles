local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
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

require('lazy').setup({
  { 'preservim/nerdtree' },
  { 'neoclide/coc.nvim', branch = 'release' },
  { 'jiangmiao/auto-pairs' },
  { 'nvim-lua/plenary.nvim' },
  { 'nvim-telescope/telescope.nvim' },
  { 'nvim-telescope/telescope-file-browser.nvim' },
  { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' },
  { 'marko-cerovac/material.nvim' },
  { 'savq/melange-nvim' },
}, {
  defaults = {
	lazy = false, 
  }
})
