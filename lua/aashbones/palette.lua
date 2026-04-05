-- Palette loader — resolves the active variant
local M = {}

function M.load(variant)
  variant = variant or "tide"
  local mod = "aashbones.palettes." .. variant
  package.loaded[mod] = nil
  return require(mod)
end

return M
