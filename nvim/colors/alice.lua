-- =========================================================
-- Alice.nvim
-- Minimalist Dark Colorscheme
-- =========================================================

vim.cmd("highlight clear")

if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
end

vim.o.background = "dark"
vim.g.colors_name = "alice"

-- Palette
local colors = {
    background = "#141414",
    foreground = "#EBEBEB",
    comment    = "#8C8C8C",
}

-- Highlight helper
local function set_hl(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
end

-- =========================================================
-- Editor
-- =========================================================

set_hl("Normal",       { fg = colors.foreground, bg = colors.background })
set_hl("NormalNC",     { fg = colors.foreground, bg = colors.background })
set_hl("NormalFloat",  { fg = colors.foreground, bg = colors.background })
set_hl("FloatBorder",  { fg = colors.comment, bg = colors.background })

set_hl("Cursor",       { fg = colors.background, bg = colors.foreground })
set_hl("CursorLine",   { bg = colors.background })
set_hl("CursorColumn", { bg = colors.background })
set_hl("LineNr",       { fg = colors.comment, bg = colors.background })
set_hl("CursorLineNr", { fg = colors.foreground, bg = colors.background })

set_hl("SignColumn",   { fg = colors.comment, bg = colors.background })
set_hl("ColorColumn",  { bg = colors.background })
set_hl("Folded",       { fg = colors.comment, bg = colors.background })
set_hl("FoldColumn",   { fg = colors.comment, bg = colors.background })

-- =========================================================
-- Syntax
-- =========================================================

set_hl("Comment",      { fg = colors.comment })
set_hl("Constant",     { fg = colors.foreground })
set_hl("String",       { fg = colors.foreground })
set_hl("Character",    { fg = colors.foreground })
set_hl("Number",       { fg = colors.foreground })
set_hl("Boolean",      { fg = colors.foreground })
set_hl("Float",        { fg = colors.foreground })

set_hl("Identifier",   { fg = colors.foreground })
set_hl("Function",     { fg = colors.foreground })

set_hl("Statement",    { fg = colors.foreground })
set_hl("Conditional",  { fg = colors.foreground })
set_hl("Repeat",       { fg = colors.foreground })
set_hl("Label",        { fg = colors.foreground })
set_hl("Operator",     { fg = colors.foreground })
set_hl("Keyword",      { fg = colors.foreground })
set_hl("Exception",    { fg = colors.foreground })

set_hl("PreProc",      { fg = colors.foreground })
set_hl("Include",      { fg = colors.foreground })
set_hl("Define",       { fg = colors.foreground })
set_hl("Macro",        { fg = colors.foreground })

set_hl("Type",         { fg = colors.foreground })
set_hl("StorageClass", { fg = colors.foreground })
set_hl("Structure",    { fg = colors.foreground })
set_hl("Typedef",      { fg = colors.foreground })

set_hl("Special",      { fg = colors.foreground })
set_hl("SpecialChar",  { fg = colors.foreground })
set_hl("Delimiter",    { fg = colors.foreground })
set_hl("SpecialComment", { fg = colors.comment })

set_hl("Underlined",   { fg = colors.foreground, underline = true })
set_hl("Error",        { fg = colors.foreground, underline = true })
set_hl("Todo",         { fg = colors.comment, bold = true })

-- =========================================================
-- Search
-- =========================================================

set_hl("Search",       { fg = colors.background, bg = colors.foreground })
set_hl("IncSearch",    { fg = colors.background, bg = colors.foreground })
set_hl("CurSearch",    { fg = colors.background, bg = colors.foreground })
set_hl("MatchParen",   { fg = colors.foreground, underline = true })

-- =========================================================
-- Visual
-- =========================================================

set_hl("Visual",       { fg = colors.foreground, bg = colors.background, reverse = true })
set_hl("VisualNOS",    { fg = colors.foreground, bg = colors.background, reverse = true })

-- =========================================================
-- Popup Menu
-- =========================================================

set_hl("Pmenu",        { fg = colors.foreground, bg = colors.background })
set_hl("PmenuSel",     { fg = colors.background, bg = colors.foreground })
set_hl("PmenuSbar",    { bg = colors.background })
set_hl("PmenuThumb",   { bg = colors.comment })

-- =========================================================
-- Status Line
-- =========================================================

set_hl("StatusLine",   { fg = colors.foreground, bg = colors.background })
set_hl("StatusLineNC", { fg = colors.comment, bg = colors.background })
set_hl("WinSeparator", { fg = colors.comment })

-- =========================================================
-- Tabs
-- =========================================================

set_hl("TabLine",      { fg = colors.comment, bg = colors.background })
set_hl("TabLineFill",  { bg = colors.background })
set_hl("TabLineSel",   { fg = colors.foreground, bg = colors.background })

-- =========================================================
-- Messages
-- =========================================================

set_hl("ErrorMsg",     { fg = colors.foreground })
set_hl("WarningMsg",   { fg = colors.foreground })
set_hl("ModeMsg",      { fg = colors.foreground })
set_hl("MoreMsg",      { fg = colors.foreground })
set_hl("Question",     { fg = colors.foreground })

-- =========================================================
-- Diff
-- =========================================================

set_hl("DiffAdd",      { fg = colors.foreground, bg = colors.background, underline = true })
set_hl("DiffChange",   { fg = colors.foreground, bg = colors.background, underline = true })
set_hl("DiffDelete",   { fg = colors.comment, bg = colors.background, strikethrough = true })
set_hl("DiffText",     { fg = colors.foreground, bg = colors.background, bold = true })

-- =========================================================
-- Diagnostics
-- =========================================================

set_hl("DiagnosticError", { fg = colors.foreground, underline = true })
set_hl("DiagnosticWarn",  { fg = colors.foreground, underline = true })
set_hl("DiagnosticInfo",  { fg = colors.foreground })
set_hl("DiagnosticHint",  { fg = colors.comment })

set_hl("DiagnosticUnderlineError", { undercurl = true, sp = colors.foreground })
set_hl("DiagnosticUnderlineWarn",  { undercurl = true, sp = colors.comment })
set_hl("DiagnosticUnderlineInfo",  { underline = true })
set_hl("DiagnosticUnderlineHint",  { underline = true })

-- =========================================================
-- Tree-sitter
-- =========================================================

set_hl("@comment",          { fg = colors.comment })
set_hl("@string",           { fg = colors.foreground })
set_hl("@number",           { fg = colors.foreground })
set_hl("@boolean",          { fg = colors.foreground })
set_hl("@constant",         { fg = colors.foreground })
set_hl("@constant.builtin", { fg = colors.foreground })
set_hl("@function",         { fg = colors.foreground })
set_hl("@function.call",    { fg = colors.foreground })
set_hl("@method",           { fg = colors.foreground })
set_hl("@keyword",          { fg = colors.foreground })
set_hl("@operator",         { fg = colors.foreground })
set_hl("@type",             { fg = colors.foreground })
set_hl("@variable",         { fg = colors.foreground })
set_hl("@property",         { fg = colors.foreground })
set_hl("@punctuation",      { fg = colors.foreground })
set_hl("@punctuation.bracket", { fg = colors.foreground })
set_hl("@punctuation.delimiter", { fg = colors.foreground })

-- =========================================================
-- End
-- =========================================================
