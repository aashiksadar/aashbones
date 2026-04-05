if vim.g.colors_name then
  vim.cmd("highlight clear")
end

vim.g.colors_name = "aashbones"
vim.o.termguicolors = true

require("aashbones").load()
