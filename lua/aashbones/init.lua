local M = {}

M.config = {
  variant = "tide",
  transparent = false,
  italic_comments = true,
  bold_keywords = true,
  bold_types = true,
}

function M.setup(opts)
  M.config = vim.tbl_deep_extend("force", M.config, opts or {})
end

function M.load()
  if vim.g.colors_name then
    vim.cmd("highlight clear")
  end

  vim.g.colors_name = "aashbones"
  vim.o.background = "dark"
  vim.o.termguicolors = true

  local palette = require("aashbones.palette").load(M.config.variant)
  local config = M.config

  -- Clear cached modules so reloading works
  package.loaded["aashbones.highlights"] = nil
  package.loaded["aashbones.terminal"] = nil

  require("aashbones.highlights").apply(palette, config)
  require("aashbones.terminal").apply(palette)
end

return M
