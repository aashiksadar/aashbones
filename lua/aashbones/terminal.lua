local M = {}

function M.apply(p)
  -- Dark colors (0-7)
  vim.g.terminal_color_0  = p.bg
  vim.g.terminal_color_1  = p.rose
  vim.g.terminal_color_2  = p.leaf
  vim.g.terminal_color_3  = p.wood
  vim.g.terminal_color_4  = p.water
  vim.g.terminal_color_5  = p.blossom
  vim.g.terminal_color_6  = p.sky
  vim.g.terminal_color_7  = p.fg

  -- Bright colors (8-15) — lighter variants of 0-7
  vim.g.terminal_color_8  = p.bg5
  vim.g.terminal_color_9  = p.param
  vim.g.terminal_color_10 = p.leaf
  vim.g.terminal_color_11 = p.constant
  vim.g.terminal_color_12 = p.builtin
  vim.g.terminal_color_13 = p.keyword
  vim.g.terminal_color_14 = p.type
  vim.g.terminal_color_15 = p.fg1
end

return M
