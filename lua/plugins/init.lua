return {
  --[[use {
    'svrana/neosolarized.nvim',
    dependecies = { 'tjdevries/colorbuddy.nvim' }
  }]] --

  'hrsh7th/cmp-buffer', -- nvim-cmp source for buffer words
  'hrsh7th/cmp-nvim-lsp', -- nvim-cmp source for neovim',s built-in LSP
  'hrsh7th/nvim-cmp', -- Completion

  { 'junegunn/fzf',
    build = function()
      vim.fn['./install --all']()
    end
  },
  'mileszs/ack.vim',
  'nvim-telescope/telescope.nvim',
  'nvim-telescope/telescope-file-browser.nvim',
  'norcalli/nvim-colorizer.lua',
  'folke/zen-mode.nvim',
  {
    "iamcco/markdown-preview.nvim",
    build = function() vim.fn["mkdp#util#install"]() end,
  },
  -- 'akinsho/nvim-bufferline.lua',
  -- 'github/copilot.vim',

  'lewis6991/gitsigns.nvim',
  'dinhhuy258/git.nvim', -- For git blame & browse

  -- 'lukas-reineke/indent-blankline.nvim', -- Indent line guides
  -- 'glepnir/indent-guides.nvim', -- Indent guides

  --'ahmedkhalf/project.nvim', -- Project management
}
