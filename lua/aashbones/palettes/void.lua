-- Aashbones "void" palette
-- Pure black monochrome — minimal color, maximum focus

local M = {}

-- Base
M.bg       = "#000000"
M.fg       = "#B0B0B0"

-- Background shades
M.bg1      = "#0A0A0A"  -- CursorLine
M.bg2      = "#0E0E0E"  -- StatusLineNC
M.bg3      = "#141414"  -- NormalFloat, Pmenu
M.bg4      = "#1A1A1A"  -- StatusLine
M.bg5      = "#282828"  -- PmenuSel
M.bg6      = "#606060"  -- LineNr
M.bg7      = "#1E1E1E"  -- FloatBorder

-- Foreground shades
M.fg1      = "#C0C0C0"  -- StatusLineNC fg
M.fg2      = "#909090"  -- Identifier
M.fg3      = "#808080"  -- Special
M.fg4      = "#787878"  -- Number
M.fg5      = "#686868"  -- Conceal
M.fg6      = "#505050"  -- CmpItemAbbrDeprecated

-- Accent colors — desaturated, ghostly
M.rose     = "#905050"  -- errors, deletions
M.leaf     = "#508050"  -- success, additions
M.wood     = "#907050"  -- warnings
M.water    = "#506080"  -- info
M.blossom  = "#705070"  -- search, hints
M.sky      = "#507070"  -- links, special

-- Vibrant signal — shades of white/gray with faint tints
M.keyword  = "#D0D0D0"  -- bright white — keywords stand tall
M.func     = "#C8C0A8"  -- warm off-white — subtle warmth
M.type     = "#A0B0B8"  -- cool gray — faint blue tint
M.constant = "#C0B098"  -- warm gray — faint amber
M.param    = "#B8A0A8"  -- faint rose-gray — parameters
M.method   = "#B0B8A8"  -- faint green-gray — methods
M.builtin  = "#A8B0C0"  -- faint blue-gray — builtins

-- Muted noise
M.string   = "#608060"  -- dark muted green — just visible
M.operator = "#585858"  -- dark gray — nearly invisible

-- Diagnostic virtual text backgrounds
M.rose_bg    = "#0E0808"
M.wood_bg    = "#0E0C08"
M.water_bg   = "#08080E"
M.blossom_bg = "#0C080C"
M.leaf_bg    = "#080E08"

-- Diff backgrounds
M.diff_add    = "#0A1A0A"
M.diff_change = "#0A0A1A"
M.diff_delete = "#1A0A0A"
M.diff_text   = "#141430"

-- Selection / Search
M.visual    = "#1A1A1A"
M.search    = "#282028"
M.incsearch = "#D0D0D0"

-- Misc
M.color_column = "#121212"
M.non_text     = "#282828"
M.folded_fg    = "#686868"
M.folded_bg    = "#0A0A0A"
M.inlay_fg     = "#383838"
M.indent       = "#0E0E0E"
M.indent_scope = "#222222"
M.spell        = "#906060"
M.cursor_bg    = "#C0C0C0"

-- UI details
M.comment      = "#484848"
M.delimiter    = "#505050"
M.pmenu_sbar   = "#2A2A2A"
M.pmenu_thumb  = "#4A4A4A"
M.neo_tree_bg  = "#0A0A0A"

return M
