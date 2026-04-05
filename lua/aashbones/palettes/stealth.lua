-- Aashbones "stealth" palette
-- Space/military tech inspired — tactical HUD on dark cockpit

local M = {}

-- Base
M.bg       = "#0B0E14"
M.fg       = "#B0BCC8"

-- Background shades
M.bg1      = "#0E1219"  -- CursorLine
M.bg2      = "#11161E"  -- StatusLineNC
M.bg3      = "#141A24"  -- NormalFloat, Pmenu
M.bg4      = "#181F2A"  -- StatusLine
M.bg5      = "#1E2A38"  -- PmenuSel
M.bg6      = "#506878"  -- LineNr
M.bg7      = "#162030"  -- FloatBorder

-- Foreground shades
M.fg1      = "#C0CCDA"  -- StatusLineNC fg
M.fg2      = "#90A0AE"  -- Identifier
M.fg3      = "#808E9C"  -- Special
M.fg4      = "#788898"  -- Number
M.fg5      = "#607080"  -- Conceal
M.fg6      = "#4E5E6E"  -- CmpItemAbbrDeprecated

-- Accent colors
M.rose     = "#D04040"  -- red alert — errors, deletions
M.leaf     = "#40C060"  -- green light — success, additions
M.wood     = "#D0A030"  -- amber warning — warnings
M.water    = "#4080C0"  -- info blue
M.blossom  = "#7868A0"  -- hints — muted violet
M.sky      = "#508898"  -- links — teal instrument glow

-- Vibrant signal — sharp, functional, high-contrast
M.keyword  = "#E0B850"  -- bright HUD amber — unmistakable
M.func     = "#40D880"  -- vivid tactical green — sharp and clear
M.type     = "#58A0E0"  -- bright steel blue — crisp readout
M.constant = "#E0A040"  -- bright amber — data values
M.param    = "#50D8A0"  -- teal-green — targeting overlay
M.method   = "#60C890"  -- lighter tactical green
M.builtin  = "#4898D8"  -- bright HUD blue — system readout

-- Muted noise
M.string   = "#5E7048"  -- olive drab — quiet military green
M.operator = "#586068"  -- gunmetal — structural, quiet

-- Diagnostic virtual text backgrounds
M.rose_bg    = "#1A0E0E"
M.wood_bg    = "#1A1810"
M.water_bg   = "#0E1420"
M.blossom_bg = "#16121C"
M.leaf_bg    = "#0E1A10"

-- Diff backgrounds
M.diff_add    = "#0E2018"
M.diff_change = "#101828"
M.diff_delete = "#201010"
M.diff_text   = "#182840"

-- Selection / Search
M.visual    = "#182438"
M.search    = "#2A3048"
M.incsearch = "#E0B850"

-- Misc
M.color_column = "#141C28"
M.non_text     = "#283848"
M.folded_fg    = "#58A0E0"
M.folded_bg    = "#101820"
M.inlay_fg     = "#3A5060"
M.indent       = "#121820"
M.indent_scope = "#1E2C3A"
M.spell        = "#D06040"
M.cursor_bg    = "#C0CCDA"

-- UI details
M.comment      = "#384858"
M.delimiter    = "#405060"
M.pmenu_sbar   = "#1A2430"
M.pmenu_thumb  = "#3A4C5E"
M.neo_tree_bg  = "#080A10"

return M
