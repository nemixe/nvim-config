local status, indent_guides = pcall(require, "indent_guides")
if (not status) then return end

indent_guides.setup({
  indent_levels = 40;
  indent_guide_size = 2;
  indent_start_level = 1;
  indent_enable = true;
  indent_space_guides = true;
  indent_tab_guides = true;
  indent_soft_pattern = '\\s';
  even_colors = { fg = '#333B55', bg = '#222535' };
  odd_colors = { fg = '#333B55', bg = '#1F212F' };
})
