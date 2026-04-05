-- Aashbones "frost" palette
-- Cool blue-silver tones with an icy, crisp feel

local M = {}

-- Base
M.bg       = "#0E1418"
M.fg       = "#C8D3DC"

-- Background shades
M.bg1      = "#141B20"  -- CursorLine
M.bg2      = "#172025"  -- StatusLineNC
M.bg3      = "#1C2830"  -- NormalFloat, Pmenu
M.bg4      = "#1F2D36"  -- StatusLine
M.bg5      = "#2E4250"  -- PmenuSel
M.bg6      = "#5E7E98"  -- LineNr
M.bg7      = "#1E3A52"  -- FloatBorder

-- Foreground shades
M.fg1      = "#D4DDE6"  -- StatusLineNC fg
M.fg2      = "#A4B2BE"  -- Identifier
M.fg3      = "#96A5B2"  -- Special
M.fg4      = "#8E9DAA"  -- Number
M.fg5      = "#7E8D9A"  -- Conceal
M.fg6      = "#6A7B88"  -- CmpItemAbbrDeprecated

-- Accent colors
M.rose     = "#C87080"  -- errors, deletions
M.leaf     = "#78C87A"  -- success, additions
M.wood     = "#B08A6E"  -- warnings
M.water    = "#7E94D8"  -- info
M.blossom  = "#9E80B8"  -- search, hints
M.sky      = "#5EA8BE"  -- links, special

-- Vibrant signal — spread across hues, not all blue
M.keyword  = "#B48EC8"  -- ice violet — clearly purple, not blue
M.func     = "#D4C898"  -- pale gold — warm contrast against cool bg
M.type     = "#58C8D8"  -- bright cyan — icy and distinct
M.constant = "#C8A474"  -- frosted amber — warm literals
M.param    = "#C87898"  -- cold rose — parameters
M.method   = "#88C8B8"  -- mint — method calls
M.builtin  = "#78B4E8"  -- bright winter blue — builtins

-- Muted noise
M.string   = "#6E9878"  -- cool sage — minty green
M.operator = "#78868E"  -- cool gray

-- Diagnostic virtual text backgrounds
M.rose_bg    = "#201A1C"
M.wood_bg    = "#1E1C1A"
M.water_bg   = "#1A1C24"
M.blossom_bg = "#1E1A20"
M.leaf_bg    = "#1A1E1A"

-- Diff backgrounds
M.diff_add    = "#182818"
M.diff_change = "#1A2045"
M.diff_delete = "#301C20"
M.diff_text   = "#2A3060"

-- Selection / Search
M.visual    = "#243040"
M.search    = "#3A3860"
M.incsearch = "#B48EC8"

-- Misc
M.color_column = "#2E3848"
M.non_text     = "#34485A"
M.folded_fg    = "#7AAACA"
M.folded_bg    = "#1E2C38"
M.inlay_fg     = "#486878"
M.indent       = "#182028"
M.indent_scope = "#2E3C48"
M.spell        = "#C0808E"
M.cursor_bg    = "#D4DDE6"

-- UI details
M.comment      = "#4A6070"
M.delimiter    = "#506880"
M.pmenu_sbar   = "#384E5E"
M.pmenu_thumb  = "#5A7A90"
M.neo_tree_bg  = "#0A1014"

return M
