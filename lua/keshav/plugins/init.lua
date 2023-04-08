-- This file can be loaded by calling `lua require('plugins')` from your init.vim

local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end


-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]


return packer.startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
end)
