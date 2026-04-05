-- Aashbones "petal" palette
-- Rosé Pine inspired — warm rose and gold on dark plum

local M = {}

-- Base
M.bg       = "#191724"
M.fg       = "#E0DEF4"

-- Background shades
M.bg1      = "#1F1D2E"  -- CursorLine
M.bg2      = "#232136"  -- StatusLineNC
M.bg3      = "#26233A"  -- NormalFloat, Pmenu
M.bg4      = "#2A2740"  -- StatusLine
M.bg5      = "#393552"  -- PmenuSel
M.bg6      = "#6E6888"  -- LineNr
M.bg7      = "#2E2A46"  -- FloatBorder

-- Foreground shades
M.fg1      = "#E6E4F0"  -- StatusLineNC fg
M.fg2      = "#C4C1D8"  -- Identifier
M.fg3      = "#AEA9C4"  -- Special
M.fg4      = "#9893AE"  -- Number
M.fg5      = "#908CAA"  -- Conceal
M.fg6      = "#6E6A86"  -- CmpItemAbbrDeprecated

-- Accent colors
M.rose     = "#EB6F92"  -- errors, deletions
M.leaf     = "#9CCFD8"  -- success, additions
M.wood     = "#F6C177"  -- warnings
M.water    = "#31748F"  -- info
M.blossom  = "#C4A7E7"  -- search, hints
M.sky      = "#9CCFD8"  -- links, special

-- Vibrant signal — distinct hues, not overlapping
M.keyword  = "#EB6F92"  -- rose pink — keywords stand out
M.func     = "#E8B48A"  -- warm peach — distinct from rose
M.type     = "#7DD4C8"  -- bright foam/mint — clearly teal, not pink
M.constant = "#F6C177"  -- warm gold — literal values
M.param    = "#C4A7E7"  -- iris purple — parameters
M.method   = "#D4A0A0"  -- muted rose — method calls
M.builtin  = "#A8B8E8"  -- soft periwinkle — builtins

-- Muted noise
M.string   = "#8AAA78"  -- muted sage — green, not gold
M.operator = "#908CAA"  -- muted lavender-gray

-- Diagnostic virtual text backgrounds
M.rose_bg    = "#211C26"
M.wood_bg    = "#221F22"
M.water_bg   = "#1A1E28"
M.blossom_bg = "#201C2A"
M.leaf_bg    = "#1A2028"

-- Diff backgrounds
M.diff_add    = "#1A2828"
M.diff_change = "#1E1C36"
M.diff_delete = "#2C1A24"
M.diff_text   = "#2A2648"

-- Selection / Search
M.visual    = "#312E48"
M.search    = "#3E3660"
M.incsearch = "#EB6F92"

-- Misc
M.color_column = "#2A2742"
M.non_text     = "#3E3A56"
M.folded_fg    = "#C4A7E7"
M.folded_bg    = "#221F34"
M.inlay_fg     = "#56526E"
M.indent       = "#1E1C2C"
M.indent_scope = "#36324E"
M.spell        = "#EB6F92"
M.cursor_bg    = "#E0DEF4"

-- UI details
M.comment      = "#4E4868"
M.delimiter    = "#5A5478"
M.pmenu_sbar   = "#302C44"
M.pmenu_thumb  = "#504A6A"
M.neo_tree_bg  = "#14121E"

return M
