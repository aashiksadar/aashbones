-- Aashbones "tide" palette
-- Cool, deep oceanic dark theme with vibrant syntax accents

local M = {}

-- Base
M.bg       = "#0F191F"
M.fg       = "#C6D5CF"

-- Background shades (from neobones compiled output)
M.bg1      = "#152128"  -- CursorLine
M.bg2      = "#18252D"  -- StatusLineNC
M.bg3      = "#1D2C35"  -- NormalFloat, Pmenu
M.bg4      = "#20303A"  -- StatusLine
M.bg5      = "#304552"  -- PmenuSel
M.bg6      = "#466273"  -- LineNr
M.bg7      = "#1F3E56"  -- FloatBorder

-- Foreground shades
M.fg1      = "#D1E0DA"  -- StatusLineNC fg
M.fg2      = "#A7B3AE"  -- Identifier
M.fg3      = "#9AA6A1"  -- Special
M.fg4      = "#939E99"  -- Number (neobones base)
M.fg5      = "#86908C"  -- Conceal
M.fg6      = "#6E7874"  -- CmpItemAbbrDeprecated

-- Accent colors (from neobones palette)
M.rose     = "#DE6E7C"  -- errors, deletions
M.leaf     = "#90FF6B"  -- success, additions
M.wood     = "#B77E64"  -- warnings
M.water    = "#8190D4"  -- info (neobones uses this for DiagnosticInfo)
M.blossom  = "#B279A7"  -- search, hints
M.sky      = "#66A5AD"  -- links, special

-- Vibrant: keywords, functions, types, params, identifiers (the "signal")
M.keyword  = "#A68DC8"  -- muted lavender — distinct but not loud
M.func     = "#E5C07B"  -- golden yellow — eye-catching for calls
M.type     = "#56B6C2"  -- cyan/teal — structural types
M.constant = "#D19A66"  -- orange — warm pop for literals/numbers
M.param    = "#E06C75"  -- soft red — function parameters

M.method   = "#E0A85D"  -- warm amber — method calls (.then, .catch)
M.builtin  = "#61AFEF"  -- soft blue — builtins (useEffect, useState)

-- Muted: strings, operators, brackets, comments (the "noise")
M.string   = "#7A9A6D"  -- quiet olive green — present but not loud
M.operator = "#7E8A8F"  -- muted gray — blends into background

-- Diagnostic virtual text backgrounds
M.rose_bg    = "#251E1E"
M.wood_bg    = "#221F1E"
M.water_bg   = "#1F1F24"
M.blossom_bg = "#231E22"
M.leaf_bg    = "#1E201E"

-- Diff backgrounds
M.diff_add    = "#1C2C19"
M.diff_change = "#1F2645"
M.diff_delete = "#3B2023"
M.diff_text   = "#343F6D"

-- Selection / Search
M.visual    = "#2A3540"
M.search    = "#62415B"
M.incsearch = "#BE8CB3"

-- Misc
M.color_column = "#53372B"
M.non_text     = "#3E5868"
M.folded_fg    = "#7BA9C5"
M.folded_bg    = "#24353F"
M.inlay_fg     = "#4B6F84"
M.indent       = "#1D272E"
M.indent_scope = "#35444E"
M.spell        = "#CB7A83"
M.cursor_bg    = "#CEDDD7"

return M
