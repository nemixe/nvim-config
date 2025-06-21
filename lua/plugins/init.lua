return {
  --[[use {
    'svrana/neosolarized.nvim',
    dependecies = { 'tjdevries/colorbuddy.nvim' }
  }]] --

  'hrsh7th/cmp-buffer', -- nvim-cmp source for buffer words
  'hrsh7th/cmp-nvim-lsp', -- nvim-cmp source for neovim',s built-in LSP
  'hrsh7th/nvim-cmp', -- Completion
  --[[{
    'milanglacier/minuet-ai.nvim',
    config = function()
      require('minuet').setup {
        provider = 'openai_compatible',
        provider_options = {
          openai_compatible = {
            end_point = 'https://api.deepseek.com/v1/chat/completions',
            api_key = 'sk-1bba99267dd443548df636049c391104',
            name = 'deepseek',
            optional = {
              max_tokens = 256,
              top_p = 0.9,
            },
          },
        },
      }
    end,
  },]] --
  { 'nvim-lua/plenary.nvim' },

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
  {
    "supermaven-inc/supermaven-nvim",
    config = function()
      require("supermaven-nvim").setup({})
    end,
  },
}
