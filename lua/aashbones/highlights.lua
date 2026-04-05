local M = {}

function M.apply(p, config)
  local hl = function(name, opts)
    vim.api.nvim_set_hl(0, name, opts)
  end

  local bg = config.transparent and "NONE" or p.bg
  local comment_style = config.italic_comments and { italic = true } or {}
  local keyword_style = config.bold_keywords and { bold = true } or {}
  local type_style = config.bold_types and { bold = true } or {}

  ---------------------------------------------------------------------------
  -- Editor UI
  ---------------------------------------------------------------------------
  hl("Normal",        { fg = p.fg, bg = bg })
  hl("NormalFloat",   { fg = p.fg, bg = p.bg3 })
  hl("NormalNC",      { fg = p.fg, bg = bg })
  hl("FloatBorder",   { fg = p.bg7 })
  hl("FloatTitle",    { fg = p.fg, bg = p.bg3, bold = true })
  hl("Cursor",        { fg = p.bg, bg = p.cursor_bg })
  hl("lCursor",       { link = "Cursor" })
  hl("TermCursor",    { link = "Cursor" })
  hl("TermCursorNC",  { link = "lCursor" })
  hl("CursorLine",    { bg = p.bg1 })
  hl("CursorColumn",  { link = "CursorLine" })
  hl("CursorLineNr",  { fg = p.fg, bold = true })
  hl("ColorColumn",   { bg = p.color_column })
  hl("LineNr",        { fg = p.bg6 })
  hl("SignColumn",    { fg = p.bg6 })
  hl("FoldColumn",    { fg = p.bg6, bold = true })
  hl("Folded",        { fg = p.folded_fg, bg = config.transparent and "NONE" or p.folded_bg })
  hl("WinSeparator",  { fg = p.bg6 })
  hl("VertSplit",     { link = "WinSeparator" })

  hl("StatusLine",    { fg = p.fg, bg = p.bg4 })
  hl("StatusLineNC",  { fg = p.fg1, bg = p.bg2 })
  hl("TabLine",       { link = "StatusLine" })
  hl("TabLineFill",   { link = "StatusLineNC" })
  hl("TabLineSel",    { bold = true })
  hl("WinBar",        { link = "StatusLine" })
  hl("WinBarNC",      { link = "StatusLineNC" })

  hl("Pmenu",         { fg = p.fg, bg = p.bg3 })
  hl("PmenuSel",      { bg = p.bg5 })
  hl("PmenuSbar",     { bg = "#405A6B" })
  hl("PmenuThumb",    { bg = "#60869D" })

  hl("Visual",        { bg = p.visual })
  hl("Search",        { fg = p.fg, bg = p.search })
  hl("IncSearch",     { fg = p.bg, bg = p.incsearch, bold = true })
  hl("CurSearch",     { link = "IncSearch" })
  hl("MatchParen",    { link = "Search" })
  hl("QuickFixLine",  { link = "Search" })

  hl("ModeMsg",       { link = "Normal" })
  hl("MoreMsg",       { fg = p.leaf, bold = true })
  hl("WarningMsg",    { fg = p.wood })
  hl("Error",         { fg = p.rose })
  hl("ErrorMsg",      { link = "Error" })

  hl("NonText",       { fg = p.non_text })
  hl("EndOfBuffer",   { link = "NonText" })
  hl("Whitespace",    { link = "NonText" })
  hl("SpecialKey",    { fg = p.non_text, italic = true })

  hl("WildMenu",      { fg = p.bg, bg = p.blossom })
  hl("Directory",     { bold = true })
  hl("Question",      { link = "MoreMsg" })
  hl("Title",         { fg = p.fg, bold = true })
  hl("Conceal",       { fg = p.fg5, bold = true, italic = true })

  hl("SpellBad",      { fg = p.spell, undercurl = true, sp = p.rose })
  hl("SpellCap",      { fg = p.spell, undercurl = true, sp = p.rose })
  hl("SpellLocal",    { link = "SpellCap" })
  hl("SpellRare",     { fg = p.spell, undercurl = true, sp = p.wood })

  hl("DiffAdd",       { bg = p.diff_add })
  hl("DiffChange",    { bg = p.diff_change })
  hl("DiffDelete",    { bg = p.diff_delete })
  hl("DiffText",      { fg = p.fg, bg = p.diff_text })

  hl("Bold",          { bold = true })
  hl("Italic",        { italic = true })
  hl("Underlined",    { underline = true })
  hl("Todo",          { bold = true, underline = true })

  ---------------------------------------------------------------------------
  -- Syntax (enhanced distinction)
  ---------------------------------------------------------------------------
  hl("Comment",       vim.tbl_extend("force", { fg = "#536977" }, comment_style))
  hl("Constant",      { fg = p.constant, italic = true })
  hl("String",        { fg = p.string })
  hl("Character",     { fg = p.string })
  hl("Number",        { fg = p.constant })
  hl("Boolean",       { fg = p.constant, italic = true })
  hl("Float",         { link = "Number" })

  hl("Identifier",    { fg = p.fg2 })
  hl("Function",      { fg = p.func })

  hl("Statement",     vim.tbl_extend("force", { fg = p.keyword }, keyword_style))
  hl("Conditional",   { link = "Statement" })
  hl("Repeat",        { link = "Statement" })
  hl("Label",         { link = "Statement" })
  hl("Operator",      { fg = p.operator })
  -- Keep operators quiet - they're visual noise
  hl("Keyword",       { link = "Statement" })
  hl("Exception",     { link = "Statement" })

  hl("PreProc",       { link = "Statement" })
  hl("Include",       { link = "PreProc" })
  hl("Define",        { link = "PreProc" })
  hl("Macro",         { link = "PreProc" })
  hl("PreCondit",     { link = "PreProc" })

  hl("Type",          vim.tbl_extend("force", { fg = p.type }, type_style))
  hl("StorageClass",  { link = "Type" })
  hl("Structure",     { link = "Type" })
  hl("Typedef",       { link = "Type" })

  hl("Special",       { fg = p.fg3, bold = true })
  hl("SpecialChar",   { link = "Special" })
  hl("Tag",           { link = "Special" })
  hl("Delimiter",     { fg = "#5B7E94" })
  hl("SpecialComment", { fg = "#536977" })
  hl("Debug",         { link = "Special" })

  ---------------------------------------------------------------------------
  -- Treesitter
  ---------------------------------------------------------------------------
  hl("@variable",                    { link = "Identifier" })
  hl("@variable.builtin",           { fg = p.constant, italic = true })
  hl("@variable.parameter",         { fg = p.param })
  hl("@variable.member",            { link = "Identifier" })

  hl("@constant",                   { fg = p.fg2, bold = true })
  hl("@constant.builtin",           { link = "Constant" })
  hl("@constant.macro",             { link = "Constant" })

  hl("@module",                     { fg = p.constant, italic = true })
  hl("@module.builtin",             { link = "@module" })
  hl("@label",                      { link = "Statement" })

  hl("@string",                     { link = "String" })
  hl("@string.documentation",       { link = "@string" })
  hl("@string.regexp",              { link = "Constant" })
  hl("@string.escape",              { link = "Special" })
  hl("@string.special",             { link = "Special" })
  hl("@string.special.symbol",      { link = "Identifier" })
  hl("@string.special.url",         { link = "Special" })
  hl("@string.special.path",        { link = "Special" })

  hl("@character",                  { link = "Constant" })
  hl("@character.special",          { link = "Special" })

  hl("@boolean",                    { link = "Boolean" })
  hl("@number",                     { link = "Number" })
  hl("@number.float",               { link = "@number" })

  hl("@type",                       { link = "Type" })
  hl("@type.builtin",               { link = "@type" })
  hl("@type.definition",            { link = "@type" })
  hl("@type.qualifier",             { link = "@type" })

  hl("@attribute",                  { link = "PreProc" })
  hl("@property",                   { link = "Identifier" })

  hl("@function",                   { link = "Function" })
  hl("@function.builtin",           { fg = p.builtin })
  hl("@function.call",              { link = "@function" })
  hl("@function.macro",             { link = "PreProc" })
  hl("@function.method",            { fg = p.method })
  hl("@function.method.call",       { fg = p.method })

  hl("@constructor",                { link = "Special" })
  hl("@operator",                   { link = "Operator" })

  hl("@keyword",                    { link = "Statement" })
  hl("@keyword.coroutine",          { link = "Statement" })
  hl("@keyword.function",           { link = "Statement" })
  hl("@keyword.operator",           { link = "Statement" })
  hl("@keyword.import",             { link = "PreProc" })
  hl("@keyword.storage",            { link = "Type" })
  hl("@keyword.repeat",             { link = "Statement" })
  hl("@keyword.return",             { link = "Statement" })
  hl("@keyword.debug",              { link = "Special" })
  hl("@keyword.exception",          { link = "Statement" })
  hl("@keyword.conditional",        { link = "Statement" })
  hl("@keyword.conditional.ternary", { link = "@keyword.conditional" })
  hl("@keyword.directive",          { link = "PreProc" })
  hl("@keyword.directive.define",   { link = "@keyword.directive" })

  hl("@punctuation.delimiter",      { link = "Delimiter" })
  hl("@punctuation.bracket",        { link = "Delimiter" })
  hl("@punctuation.special",        { link = "Delimiter" })

  hl("@comment",                    { link = "Comment" })
  hl("@comment.documentation",      { link = "@comment" })
  hl("@comment.error",              { link = "Error" })
  hl("@comment.warning",            { link = "WarningMsg" })
  hl("@comment.todo",               { link = "Todo" })
  hl("@comment.note",               { link = "DiagnosticInfo" })

  -- Markup
  hl("@markup.strong",              { link = "Bold" })
  hl("@markup.italic",              { link = "Italic" })
  hl("@markup.strikethrough",       { strikethrough = true })
  hl("@markup.underline",           { link = "Underlined" })
  hl("@markup.heading",             { link = "Title" })
  hl("@markup.quote",               { fg = p.fg4 })
  hl("@markup.math",                { link = "Special" })
  hl("@markup.environment",         { link = "PreProc" })
  hl("@markup.link",                { link = "Constant" })
  hl("@markup.link.label",          { link = "Special" })
  hl("@markup.link.url",            { link = "Constant" })
  hl("@markup.raw",                 { link = "Constant" })
  hl("@markup.raw.block",           { link = "@markup.raw" })
  hl("@markup.list",                { link = "Special" })
  hl("@markup.list.checked",        { link = "@markup.list" })
  hl("@markup.list.unchecked",      { link = "@markup.list" })

  -- Diff
  hl("@diff.plus",                  { link = "DiffAdd" })
  hl("@diff.minus",                 { link = "DiffDelete" })
  hl("@diff.delta",                 { link = "DiffChange" })

  -- Tags (HTML/JSX)
  hl("@tag",                        { fg = p.func })
  hl("@tag.attribute",              { fg = p.param })
  hl("@tag.delimiter",              { link = "Delimiter" })

  hl("@none",                       {})

  -- Language-specific
  hl("@constructor.lua",            { link = "Delimiter" })
  hl("@punctuation.special.markdown", { link = "Special" })
  hl("@string.escape.markdown",     { link = "SpecialKey" })
  hl("@markup.link.markdown",       { fg = p.fg2, underline = true })
  hl("@markup.italic.markdown",     { link = "Italic" })
  hl("@markup.title.markdown",      { link = "Statement" })
  hl("@markup.raw.markdown",        { link = "Type" })
  hl("@markup.link.url.markdown",   { link = "SpecialComment" })
  hl("@markup.link.vimdoc",         { fg = p.fg2, underline = true })
  hl("@markup.raw.block.vimdoc",    { fg = "NONE" })
  hl("@variable.parameter.vimdoc",  { link = "Type" })
  hl("@label.vimdoc",               { fg = p.type, bold = true })

  ---------------------------------------------------------------------------
  -- LSP Semantic Tokens
  ---------------------------------------------------------------------------
  hl("@lsp.type.boolean",                       { link = "@boolean" })
  hl("@lsp.type.builtinType",                   { link = "@type.builtin" })
  hl("@lsp.type.comment",                       { link = "@comment" })
  hl("@lsp.type.decorator",                     { link = "@attribute" })
  hl("@lsp.type.deriveHelper",                  { link = "@attribute" })
  hl("@lsp.type.enum",                          { link = "@type" })
  hl("@lsp.type.enumMember",                    { link = "@constant" })
  hl("@lsp.type.escapeSequence",                { link = "@string.escape" })
  hl("@lsp.type.formatSpecifier",               { link = "@markup.list" })
  hl("@lsp.type.generic",                       { link = "@variable" })
  hl("@lsp.type.interface",                     { link = "@type" })
  hl("@lsp.type.keyword",                       { link = "Statement" })
  hl("@lsp.type.lifetime",                      { link = "@keyword.storage" })
  hl("@lsp.type.namespace",                     { link = "@module" })
  hl("@lsp.type.number",                        { link = "@number" })
  hl("@lsp.type.operator",                      { link = "@operator" })
  hl("@lsp.type.parameter",                     { link = "@variable.parameter" })
  hl("@lsp.type.property",                      { link = "@property" })
  hl("@lsp.type.selfKeyword",                   { link = "@variable.builtin" })
  hl("@lsp.type.selfTypeKeyword",               { link = "@variable.builtin" })
  hl("@lsp.type.string",                        { link = "@string" })
  hl("@lsp.type.typeAlias",                     { link = "@type.definition" })
  hl("@lsp.type.unresolvedReference",            { undercurl = true, sp = p.rose })
  hl("@lsp.type.variable",                      {})
  hl("@lsp.typemod.class.defaultLibrary",        { link = "@type.builtin" })
  hl("@lsp.typemod.enum.defaultLibrary",         { link = "@type.builtin" })
  hl("@lsp.typemod.enumMember.defaultLibrary",   { link = "@constant.builtin" })
  hl("@lsp.typemod.function.defaultLibrary",     { link = "@function.builtin" })
  hl("@lsp.typemod.keyword.async",              { link = "@keyword.coroutine" })
  hl("@lsp.typemod.keyword.injected",           { link = "Statement" })
  hl("@lsp.typemod.macro.defaultLibrary",        { link = "@function.builtin" })
  hl("@lsp.typemod.method.defaultLibrary",       { link = "@function.builtin" })
  hl("@lsp.typemod.operator.injected",          { link = "@operator" })
  hl("@lsp.typemod.string.injected",            { link = "@string" })
  hl("@lsp.typemod.struct.defaultLibrary",       { link = "@type.builtin" })
  hl("@lsp.typemod.type.defaultLibrary",        { link = "@type" })
  hl("@lsp.typemod.typeAlias.defaultLibrary",   { link = "@type" })
  hl("@lsp.typemod.variable.callable",          { link = "@function" })
  hl("@lsp.typemod.variable.defaultLibrary",    { link = "@variable.builtin" })
  hl("@lsp.typemod.variable.injected",          { link = "@variable" })
  hl("@lsp.typemod.variable.static",            { link = "@constant" })

  ---------------------------------------------------------------------------
  -- LSP
  ---------------------------------------------------------------------------
  hl("LspReferenceText",  { link = "ColorColumn" })
  hl("LspReferenceRead",  { link = "ColorColumn" })
  hl("LspReferenceWrite", { link = "ColorColumn" })
  hl("LspCodeLens",       { link = "LineNr" })
  hl("LspInlayHint",      { fg = p.inlay_fg, bg = p.bg1 })

  ---------------------------------------------------------------------------
  -- Diagnostics
  ---------------------------------------------------------------------------
  hl("DiagnosticError",   { fg = p.rose })
  hl("DiagnosticWarn",    { fg = p.wood })
  hl("DiagnosticInfo",    { fg = p.water })
  hl("DiagnosticHint",    { fg = p.blossom })
  hl("DiagnosticOk",      { fg = p.leaf })
  hl("DiagnosticDeprecated",   { link = "DiagnosticWarn" })
  hl("DiagnosticUnnecessary",  { link = "DiagnosticWarn" })

  hl("DiagnosticSignError", { fg = p.rose })
  hl("DiagnosticSignWarn",  { fg = p.wood })
  hl("DiagnosticSignInfo",  { fg = p.water })
  hl("DiagnosticSignHint",  { fg = p.blossom })
  hl("DiagnosticSignOk",    { fg = p.leaf })

  hl("DiagnosticVirtualTextError", { fg = p.rose, bg = p.rose_bg })
  hl("DiagnosticVirtualTextWarn",  { fg = p.wood, bg = p.wood_bg })
  hl("DiagnosticVirtualTextInfo",  { fg = p.water, bg = p.water_bg })
  hl("DiagnosticVirtualTextHint",  { fg = p.blossom, bg = p.blossom_bg })
  hl("DiagnosticVirtualTextOk",    { fg = p.leaf, bg = p.leaf_bg })

  hl("DiagnosticUnderlineError", { undercurl = true, sp = p.rose })
  hl("DiagnosticUnderlineWarn",  { undercurl = true, sp = p.wood })
  hl("DiagnosticUnderlineInfo",  { undercurl = true, sp = p.water })
  hl("DiagnosticUnderlineHint",  { undercurl = true, sp = p.blossom })
  hl("DiagnosticUnderlineOk",    { undercurl = true, sp = p.leaf })

  ---------------------------------------------------------------------------
  -- Diff syntax
  ---------------------------------------------------------------------------
  hl("diffAdded",    { link = "DiffAdd" })
  hl("diffRemoved",  { link = "DiffDelete" })
  hl("diffChanged",  { link = "DiffChange" })
  hl("diffOldFile",  { fg = p.rose, italic = true })
  hl("diffNewFile",  { fg = p.leaf, italic = true })
  hl("diffFile",     { fg = p.wood, bold = true })
  hl("diffLine",     { fg = p.blossom, bold = true })
  hl("diffIndexLine", { fg = p.wood })

  ---------------------------------------------------------------------------
  -- Telescope
  ---------------------------------------------------------------------------
  hl("TelescopeSelection",      { link = "CursorLine" })
  hl("TelescopeSelectionCaret",  { bg = p.bg1, fg = p.rose })
  hl("TelescopeMatching",        { fg = p.blossom, bold = true })
  hl("TelescopeBorder",          { fg = p.bg7 })

  ---------------------------------------------------------------------------
  -- Neo-tree
  ---------------------------------------------------------------------------
  local neo_bg = config.transparent and "NONE" or "#1C1C1C"
  hl("NeoTreeNormal",         { fg = p.fg, bg = neo_bg })
  hl("NeoTreeNormalNC",       { link = "NeoTreeNormal" })
  hl("NeoTreeDirectoryName",  { fg = p.sky })
  hl("NeoTreeDirectoryIcon",  { fg = p.sky })
  hl("NeoTreeFileName",       { fg = p.fg })
  hl("NeoTreeRootName",       { fg = p.fg, bold = true })
  hl("NeoTreeCursorLine",     { bg = p.bg2 })
  hl("NeoTreeGitAdded",       { fg = p.leaf })
  hl("NeoTreeGitModified",    { fg = p.water })
  hl("NeoTreeGitUntracked",   { fg = p.fg5 })
  hl("NeoTreeGitDeleted",     { fg = p.rose })
  if not config.transparent then
    hl("NeoTreeWinSeparator", { fg = neo_bg, bg = neo_bg })
  end

  ---------------------------------------------------------------------------
  -- nvim-cmp
  ---------------------------------------------------------------------------
  hl("CmpItemAbbr",              { fg = p.fg2 })
  hl("CmpItemAbbrDeprecated",    { fg = p.fg6 })
  hl("CmpItemAbbrMatch",         { fg = p.fg, bold = true })
  hl("CmpItemAbbrMatchFuzzy",    { fg = p.fg1, bold = true })
  hl("CmpItemKind",              { fg = p.fg4 })
  hl("CmpItemMenu",              { fg = p.fg5 })

  ---------------------------------------------------------------------------
  -- Which-key
  ---------------------------------------------------------------------------
  hl("WhichKey",          { link = "Statement" })
  hl("WhichKeyGroup",     { link = "Special" })
  hl("WhichKeySeparator", { fg = p.bg6 })
  hl("WhichKeyValue",     { link = "Constant" })

  ---------------------------------------------------------------------------
  -- GitSigns
  ---------------------------------------------------------------------------
  hl("GitSignsAdd",    { fg = p.leaf })
  hl("GitSignsChange", { fg = p.water })
  hl("GitSignsDelete", { fg = p.rose })
  hl("GitGutterAdd",    { link = "GitSignsAdd" })
  hl("GitGutterChange", { link = "GitSignsChange" })
  hl("GitGutterDelete", { link = "GitSignsDelete" })

  ---------------------------------------------------------------------------
  -- Indent guides
  ---------------------------------------------------------------------------
  hl("IblIndent",         { fg = p.indent })
  hl("IblScope",          { fg = p.indent_scope })
  hl("IndentLine",        { link = "IblIndent" })
  hl("IndentLineCurrent", { link = "IblScope" })

  ---------------------------------------------------------------------------
  -- Mason
  ---------------------------------------------------------------------------
  hl("MasonHighlight",   { fg = p.water })
  hl("MasonHeader",      { fg = p.bg, bg = p.wood, bold = true })
  hl("MasonError",       { link = "Error" })

  ---------------------------------------------------------------------------
  -- Markdown / Help
  ---------------------------------------------------------------------------
  hl("markdownUrl",               { link = "SpecialComment" })
  hl("markdownCode",              { link = "Type" })
  hl("markdownLinkText",          { fg = p.fg2, underline = true })
  hl("markdownLinkTextDelimiter", { link = "Delimiter" })
  hl("helpHyperTextEntry",        { fg = p.type, bold = true })
  hl("helpHyperTextJump",         { fg = p.fg2, underline = true })
  hl("helpSpecial",               { link = "Type" })
  hl("helpOption",                { link = "Constant" })

  ---------------------------------------------------------------------------
  -- Misc plugins
  ---------------------------------------------------------------------------
  hl("gitcommitOverflow", { link = "WarningMsg" })
end

return M
