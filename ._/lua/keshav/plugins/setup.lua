-- local ensure_packer = function()
--   local fn = vim.fn
--   local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
--   if fn.empty(fn.glob(install_path)) > 0 then
--     fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
--     vim.cmd [[packadd packer.nvim]]
--     return true
--   end
--   return false
-- end

-- local packer_bootstrap = ensure_packer()

local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]


return require('packer').startup(function(use)

  -- Let Packer manage itself
  use 'wbthomason/packer.nvim'
  
  -- Treesitter
  -- use({
  --   'nvim-treesitter/nvim-treesitter',
  --   config = function() require("tree-sitter") end,
  --   run= ':TsUpdate'
  -- })

  -- NvimTree
  -- use({
  --    'kyazdani42/nvim-tree.lua',
  --   requires = { 
  --       "nvim-lua/plenary.nvim",
  --       "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
  --       "MunifTanjim/nui.nvim",
  --     },
  --     config = function() require('neo-tree') end,  -- Must add this manually
  -- })


  -- telescope --
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
  -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }


  -- theme plugins
  -- use 'morhetz/gruvbox'
  -- use "olimorris/onedarkpro.nvim"



  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
