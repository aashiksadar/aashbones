-- Palette loader — resolves the active variant
local M = {}

local valid_variants = {
  void = true, tide = true, frost = true, petal = true, stealth = true,
}

function M.load(variant)
  variant = variant or "void"
  if not valid_variants[variant] then
    vim.notify(
      string.format("[aashbones] Unknown variant '%s'. Available: %s", variant, table.concat(vim.tbl_keys(valid_variants), ", ")),
      vim.log.levels.WARN
    )
    variant = "void"
  end
  local mod = "aashbones.palettes." .. variant
  package.loaded[mod] = nil
  return require(mod)
end

return M
