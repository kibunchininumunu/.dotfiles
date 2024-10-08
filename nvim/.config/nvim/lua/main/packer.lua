-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- bootstrap packer
 local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

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

  if packer_bootstrap then
    require('packer').sync()
  end
end)
