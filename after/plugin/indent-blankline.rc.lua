local status, indent_blankline = pcall(require, "ibl")
if (not status) then return end

local highlight = {
  "CursorColumn",
  "Whitespace",
}

indent_blankline.setup {
  -- for example, context is off by default, use this to turn it on
  indent = { highlight = highlight, char = "•" },
  whitespace = {
    highlight = highlight,
    remove_blankline_trail = false,
  },
  scope = { enabled = false },
}
