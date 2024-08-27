-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Set colorscheme
--   use({ 
-- 	  'kepano/flexoki-neovim', 
-- 	  as = 'flexoki', 
-- 	  config = function()
-- 		  vim.cmd('colorscheme flexoki-dark')
-- 	  end
--   })
   use({ 
	  'bluz71/vim-moonfly-colors', 
	  as = 'moonfly', 
	  config = function()
		  vim.cmd('colorscheme moonfly')
	  end
  })

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
end)
