local M = {}

function M.apply(p)
  vim.g.terminal_color_0  = p.bg
  vim.g.terminal_color_1  = p.rose
  vim.g.terminal_color_2  = p.leaf
  vim.g.terminal_color_3  = p.wood
  vim.g.terminal_color_4  = p.water
  vim.g.terminal_color_5  = p.blossom
  vim.g.terminal_color_6  = p.sky
  vim.g.terminal_color_7  = p.fg
  vim.g.terminal_color_8  = "#263945"
  vim.g.terminal_color_9  = "#E8838F"
  vim.g.terminal_color_10 = "#A0FF85"
  vim.g.terminal_color_11 = "#D68C67"
  vim.g.terminal_color_12 = "#92A0E2"
  vim.g.terminal_color_13 = "#CF86C1"
  vim.g.terminal_color_14 = "#7EB8C9"
  vim.g.terminal_color_15 = p.fg4
end

return M
