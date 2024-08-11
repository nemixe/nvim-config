local status, hlchunk = pcall(require, "hlchunk")
if (not status) then return end

local default_indent = {
  style = { vim.api.nvim_get_hl(0, { name = "Whitespace" }) },
  use_treesitter = false,
  chars = { "│", "•" },
  ahead_lines = 5,
  enable = true
}

hlchunk.setup({
  chunk = {
    enable = false,
    delay = 10,
    style = { '#FCA7EA' }
    -- ...
  },
  indent = default_indent,
  line_num = {
    enable = true,
    style = { '#FCA7EA' }
  },
  blank = {
    enable = blank
  },
  context = {
    enable = false
  },
})
