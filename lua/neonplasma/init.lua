local _local_1_ = require("neonplasma.colorutils")
local blend_hex = _local_1_["blend-hex"]
if vim.g.colors_name then
  vim.cmd.hi("clear")
else
end
vim.g["colors_name"] = "neonplasma"
vim.o["termguicolors"] = true
local base00 = "#01001F"
local white = "#ffffff"
local light_blue = "#00DFFF"
local pink = "#fd2074"
local mid_green = "#00D96B"
local green = blend_hex(mid_green, light_blue, 0.35)
local light_yellow = "#ECE15A"
local lime_yellow = "#CDFF00"
local purple = "#7e1cf0"
local neonplasma = (((vim.o.background == "dark") and {base00 = base00, base01 = blend_hex(base00, white, 0.03), base02 = blend_hex(base00, light_blue, 0.15), base03 = light_yellow, base04 = white, base05 = blend_hex(base00, white, 0.95), base06 = white, base07 = "#00FFFB", base08 = green, base09 = light_blue, base10 = lime_yellow, base11 = "#33b1ff", base12 = purple, base13 = mid_green, base14 = pink, base15 = "#36E4FF", blend = white, none = "NONE"}) or {base00 = white, base01 = blend_hex(base00, white, 0.95), base02 = blend_hex(base00, white, 0.82), base03 = base00, base04 = "#37474F", base05 = "#90A4AE", base06 = "#525252", base07 = "#08bdba", base08 = "#FF33B3", base09 = "#FD2074", base10 = "#FF6F00", base11 = "#0f62fe", base12 = "#673AB7", base13 = "#00D96B", base14 = "#7E1CF0", base15 = "#FFAB91", blend = "#FAFAFA", none = "NONE"})
do end (vim.g)["terminal_color_0"] = neonplasma.base01
neonplasma.blend = neonplasma.base02
vim.g["terminal_color_1"] = neonplasma.base11
vim.g["terminal_color_2"] = neonplasma.base14
vim.g["terminal_color_3"] = neonplasma.base13
vim.g["terminal_color_4"] = neonplasma.base09
vim.g["terminal_color_5"] = neonplasma.base15
vim.g["terminal_color_6"] = neonplasma.base08
vim.g["terminal_color_7"] = neonplasma.base05
vim.g["terminal_color_8"] = neonplasma.base03
vim.g["terminal_color_9"] = neonplasma.base11
vim.g["terminal_color_10"] = neonplasma.base14
vim.g["terminal_color_11"] = neonplasma.base13
vim.g["terminal_color_12"] = neonplasma.base09
vim.g["terminal_color_13"] = neonplasma.base15
vim.g["terminal_color_14"] = neonplasma.base07
vim.g["terminal_color_15"] = neonplasma.base06
vim.api.nvim_set_hl(0, "ColorColumn", {fg = neonplasma.none, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "Cursor", {fg = neonplasma.base00, bg = neonplasma.base04})
vim.api.nvim_set_hl(0, "CursorLine", {fg = neonplasma.none, bg = neonplasma.base01})
vim.api.nvim_set_hl(0, "CursorColumn", {fg = neonplasma.none, bg = neonplasma.base01})
vim.api.nvim_set_hl(0, "CursorLineNr", {fg = neonplasma.base08, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "QuickFixLine", {fg = neonplasma.none, bg = neonplasma.base01})
vim.api.nvim_set_hl(0, "Error", {fg = neonplasma.base10, bg = neonplasma.base01})
vim.api.nvim_set_hl(0, "LineNr", {fg = neonplasma.base08, bg = neonplasma.base00})
vim.api.nvim_set_hl(0, "NonText", {fg = neonplasma.base02, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "Normal", {fg = neonplasma.base04, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "Pmenu", {fg = neonplasma.base04, bg = neonplasma.base01})
vim.api.nvim_set_hl(0, "PmenuSbar", {fg = neonplasma.base04, bg = neonplasma.base01})
vim.api.nvim_set_hl(0, "PmenuSel", {fg = neonplasma.base08, bg = neonplasma.base02})
vim.api.nvim_set_hl(0, "PmenuThumb", {fg = neonplasma.base08, bg = neonplasma.base02})
vim.api.nvim_set_hl(0, "SpecialKey", {fg = neonplasma.base03, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "Visual", {fg = neonplasma.none, bg = neonplasma.base02})
vim.api.nvim_set_hl(0, "VisualNOS", {fg = neonplasma.none, bg = neonplasma.base02})
vim.api.nvim_set_hl(0, "TooLong", {fg = neonplasma.none, bg = neonplasma.base02})
vim.api.nvim_set_hl(0, "Debug", {fg = neonplasma.base13, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "Macro", {fg = neonplasma.base07, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "MatchParen", {fg = neonplasma.none, bg = neonplasma.base02, underline = true})
vim.api.nvim_set_hl(0, "Bold", {fg = neonplasma.none, bg = neonplasma.none, bold = true})
vim.api.nvim_set_hl(0, "Italic", {fg = neonplasma.none, bg = neonplasma.none, italic = true})
vim.api.nvim_set_hl(0, "Underlined", {fg = neonplasma.none, bg = neonplasma.none, underline = true})
vim.api.nvim_set_hl(0, "DiagnosticWarn", {fg = neonplasma.base14, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "DiagnosticError", {fg = neonplasma.base10, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "DiagnosticInfo", {fg = neonplasma.base09, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "DiagnosticHint", {fg = neonplasma.base04, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", {fg = neonplasma.base14, bg = neonplasma.none, undercurl = true})
vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", {fg = neonplasma.base10, bg = neonplasma.none, undercurl = true})
vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", {fg = neonplasma.base04, bg = neonplasma.none, undercurl = true})
vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", {fg = neonplasma.base04, bg = neonplasma.none, undercurl = true})
vim.api.nvim_set_hl(0, "HealthError", {fg = neonplasma.base10, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "HealthWarning", {fg = neonplasma.base14, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "HealthSuccess", {fg = neonplasma.base13, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "@comment", {link = "Comment"})
vim.api.nvim_set_hl(0, "@text.literal.commodity", {fg = neonplasma.base13, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "@number", {fg = neonplasma.base09, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "@number.date", {fg = neonplasma.base08, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "@number.date.effective", {fg = neonplasma.base13, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "@number.interval", {fg = neonplasma.base09, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "@number.status", {fg = neonplasma.base12, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "@number.quantity", {fg = neonplasma.base11, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "@number.quantity.negative", {fg = neonplasma.base10, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "LspReferenceText", {fg = neonplasma.none, bg = neonplasma.base03})
vim.api.nvim_set_hl(0, "LspReferenceread", {fg = neonplasma.none, bg = neonplasma.base03})
vim.api.nvim_set_hl(0, "LspReferenceWrite", {fg = neonplasma.none, bg = neonplasma.base03})
vim.api.nvim_set_hl(0, "LspSignatureActiveParameter", {fg = neonplasma.base08, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "@lsp.type.class", {link = "Structure"})
vim.api.nvim_set_hl(0, "@lsp.type.decorator", {link = "Decorator"})
vim.api.nvim_set_hl(0, "@lsp.type.function", {link = "@function"})
vim.api.nvim_set_hl(0, "@lsp.type.macro", {link = "Macro"})
vim.api.nvim_set_hl(0, "@lsp.type.method", {link = "@function"})
vim.api.nvim_set_hl(0, "@lsp.type.struct", {link = "Structure"})
vim.api.nvim_set_hl(0, "@lsp.type.type", {link = "Type"})
vim.api.nvim_set_hl(0, "@lsp.type.typeParameter", {link = "Typedef"})
vim.api.nvim_set_hl(0, "@lsp.type.selfParameter", {link = "@variable.builtin"})
vim.api.nvim_set_hl(0, "@lsp.type.builtinConstant", {link = "@constant.builtin"})
vim.api.nvim_set_hl(0, "@lsp.type.magicFunction", {link = "@function.builtin"})
vim.api.nvim_set_hl(0, "@lsp.type.boolean", {link = "@boolean"})
vim.api.nvim_set_hl(0, "@lsp.type.builtinType", {link = "@type.builtin"})
vim.api.nvim_set_hl(0, "@lsp.type.comment", {link = "@comment"})
vim.api.nvim_set_hl(0, "@lsp.type.enum", {link = "@type"})
vim.api.nvim_set_hl(0, "@lsp.type.enumMember", {link = "@constant"})
vim.api.nvim_set_hl(0, "@lsp.type.escapeSequence", {link = "@string.escape"})
vim.api.nvim_set_hl(0, "@lsp.type.formatSpecifier", {link = "@punctuation.special"})
vim.api.nvim_set_hl(0, "@lsp.type.keyword", {link = "@keyword"})
vim.api.nvim_set_hl(0, "@lsp.type.namespace", {link = "@namespace"})
vim.api.nvim_set_hl(0, "@lsp.type.number", {link = "@number"})
vim.api.nvim_set_hl(0, "@lsp.type.operator", {link = "@operator"})
vim.api.nvim_set_hl(0, "@lsp.type.parameter", {link = "@parameter"})
vim.api.nvim_set_hl(0, "@lsp.type.property", {link = "@property"})
vim.api.nvim_set_hl(0, "@lsp.type.selfKeyword", {link = "@variable.builtin"})
vim.api.nvim_set_hl(0, "@lsp.type.string.rust", {link = "@string"})
vim.api.nvim_set_hl(0, "@lsp.type.typeAlias", {link = "@type.definition"})
vim.api.nvim_set_hl(0, "@lsp.type.unresolvedReference", {link = "Error"})
vim.api.nvim_set_hl(0, "@lsp.type.variable", {link = "@variable"})
vim.api.nvim_set_hl(0, "@lsp.mod.readonly", {link = "@constant"})
vim.api.nvim_set_hl(0, "@lsp.mod.typeHint", {link = "Type"})
vim.api.nvim_set_hl(0, "@lsp.mod.builtin", {link = "Special"})
vim.api.nvim_set_hl(0, "@lsp.typemod.class.defaultLibrary", {link = "@type.builtin"})
vim.api.nvim_set_hl(0, "@lsp.typemod.enum.defaultLibrary", {link = "@type.builtin"})
vim.api.nvim_set_hl(0, "@lsp.typemod.enumMember.defaultLibrary", {link = "@constant.builtin"})
vim.api.nvim_set_hl(0, "@lsp.typemod.function.defaultLibrary", {link = "@function.builtin"})
vim.api.nvim_set_hl(0, "@lsp.typemod.keyword.async", {link = "@keyword.coroutine"})
vim.api.nvim_set_hl(0, "@lsp.typemod.macro.defaultLibrary", {link = "@function.builtin"})
vim.api.nvim_set_hl(0, "@lsp.typemod.method.defaultLibrary", {link = "@function.builtin"})
vim.api.nvim_set_hl(0, "@lsp.typemod.operator.injected", {link = "@operator"})
vim.api.nvim_set_hl(0, "@lsp.typemod.string.injected", {link = "@string"})
vim.api.nvim_set_hl(0, "@lsp.typemod.operator.controlFlow", {link = "@exception"})
vim.api.nvim_set_hl(0, "@lsp.typemod.keyword.documentation", {link = "Special"})
vim.api.nvim_set_hl(0, "@lsp.typemod.variable.global", {link = "@constant"})
vim.api.nvim_set_hl(0, "@lsp.typemod.variable.static", {link = "@constant"})
vim.api.nvim_set_hl(0, "@lsp.typemod.variable.defaultLibrary", {link = "Special"})
vim.api.nvim_set_hl(0, "@lsp.typemod.function.builtin", {link = "@function.builtin"})
vim.api.nvim_set_hl(0, "@lsp.typemod.function.readonly", {link = "@method"})
vim.api.nvim_set_hl(0, "@lsp.typemod.variable.defaultLibrary", {link = "@variable.builtin"})
vim.api.nvim_set_hl(0, "@lsp.typemod.variable.injected", {link = "@variable"})
vim.api.nvim_set_hl(0, "Folded", {fg = neonplasma.base03, bg = neonplasma.base01})
vim.api.nvim_set_hl(0, "FoldColumn", {fg = neonplasma.base01, bg = neonplasma.base00})
vim.api.nvim_set_hl(0, "SignColumn", {fg = neonplasma.base01, bg = neonplasma.base00})
vim.api.nvim_set_hl(0, "Directory", {fg = neonplasma.base08, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "EndOfBuffer", {fg = neonplasma.base01, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "ErrorMsg", {fg = neonplasma.base10, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "ModeMsg", {fg = neonplasma.base04, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "MoreMsg", {fg = neonplasma.base08, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "Question", {fg = neonplasma.base04, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "Substitute", {fg = neonplasma.base01, bg = neonplasma.base08})
vim.api.nvim_set_hl(0, "WarningMsg", {fg = neonplasma.base14, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "WildMenu", {fg = neonplasma.base08, bg = neonplasma.base01})
vim.api.nvim_set_hl(0, "helpHyperTextJump", {fg = neonplasma.base08, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "helpSpecial", {fg = neonplasma.base09, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "helpHeadline", {fg = neonplasma.base10, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "helpHeader", {fg = neonplasma.base15, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "DiffAdded", {fg = neonplasma.base07, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "DiffChanged", {fg = neonplasma.base09, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "DiffRemoved", {fg = neonplasma.base10, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "DiffAdd", {bg = "#122f2f", fg = neonplasma.none})
vim.api.nvim_set_hl(0, "DiffChange", {bg = "#222a39", fg = neonplasma.none})
vim.api.nvim_set_hl(0, "DiffText", {bg = "#2f3f5c", fg = neonplasma.none})
vim.api.nvim_set_hl(0, "DiffDelete", {bg = "#361c28", fg = neonplasma.none})
vim.api.nvim_set_hl(0, "IncSearch", {fg = neonplasma.base06, bg = neonplasma.base10})
vim.api.nvim_set_hl(0, "Search", {fg = neonplasma.base01, bg = neonplasma.base08})
vim.api.nvim_set_hl(0, "TabLine", {link = "StatusLineNC"})
vim.api.nvim_set_hl(0, "TabLineFill", {link = "TabLine"})
vim.api.nvim_set_hl(0, "TabLineSel", {link = "StatusLine"})
vim.api.nvim_set_hl(0, "Title", {fg = neonplasma.base04, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "VertSplit", {fg = neonplasma.base01, bg = neonplasma.base00})
vim.api.nvim_set_hl(0, "Boolean", {fg = neonplasma.base09, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "Character", {fg = neonplasma.base14, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "Comment", {fg = neonplasma.base03, bg = neonplasma.none, italic = true})
vim.api.nvim_set_hl(0, "Conceal", {fg = neonplasma.none, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "Conditional", {fg = neonplasma.base09, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "Constant", {fg = neonplasma.base04, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "Decorator", {fg = neonplasma.base12, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "Define", {fg = neonplasma.base09, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "Delimeter", {fg = neonplasma.base06, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "Exception", {fg = neonplasma.base09, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "Float", {link = "Number"})
vim.api.nvim_set_hl(0, "Function", {fg = neonplasma.base08, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "Identifier", {fg = neonplasma.base04, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "Include", {fg = neonplasma.base09, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "Keyword", {fg = neonplasma.base09, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "Label", {fg = neonplasma.base09, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "Number", {fg = neonplasma.base15, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "Operator", {fg = neonplasma.base09, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "PreProc", {fg = neonplasma.base09, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "Repeat", {fg = neonplasma.base09, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "Special", {fg = neonplasma.base04, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "SpecialChar", {fg = neonplasma.base04, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "SpecialComment", {fg = neonplasma.base08, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "Statement", {fg = neonplasma.base09, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "StorageClass", {fg = neonplasma.base09, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "String", {fg = neonplasma.base14, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "Structure", {fg = neonplasma.base09, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "Tag", {fg = neonplasma.base04, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "Todo", {fg = neonplasma.base13, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "Type", {fg = neonplasma.base09, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "Typedef", {fg = neonplasma.base09, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "markdownBlockquote", {fg = neonplasma.base08, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "markdownBold", {link = "Bold"})
vim.api.nvim_set_hl(0, "markdownItalic", {link = "Italic"})
vim.api.nvim_set_hl(0, "markdownBoldItalic", {fg = neonplasma.none, bg = neonplasma.none, bold = true, italic = true})
vim.api.nvim_set_hl(0, "markdownRule", {link = "Comment"})
vim.api.nvim_set_hl(0, "markdownH1", {fg = neonplasma.base10, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "markdownH2", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "markdownH3", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "markdownH4", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "markdownH5", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "markdownH6", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "markdownHeadingDelimiter", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "markdownHeadingRule", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "markdownUrl", {fg = neonplasma.base14, bg = neonplasma.none, underline = true})
vim.api.nvim_set_hl(0, "markdownCode", {link = "String"})
vim.api.nvim_set_hl(0, "markdownCodeBlock", {link = "markdownCode"})
vim.api.nvim_set_hl(0, "markdownCodeDelimiter", {link = "markdownCode"})
vim.api.nvim_set_hl(0, "markdownUrl", {link = "String"})
vim.api.nvim_set_hl(0, "markdownListMarker", {fg = neonplasma.base08, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "markdownOrderedListMarker", {fg = neonplasma.base08, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "asciidocAttributeEntry", {fg = neonplasma.base15, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "asciidocAttributeList", {link = "asciidocAttributeEntry"})
vim.api.nvim_set_hl(0, "asciidocAttributeRef", {link = "asciidocAttributeEntry"})
vim.api.nvim_set_hl(0, "asciidocHLabel", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "asciidocOneLineTitle", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "asciidocQuotedMonospaced", {link = "markdownBlockquote"})
vim.api.nvim_set_hl(0, "asciidocURL", {link = "markdownUrl"})
vim.api.nvim_set_hl(0, "@comment", {link = "Comment"})
vim.api.nvim_set_hl(0, "@error", {fg = neonplasma.base11, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "@operator", {link = "Operator"})
vim.api.nvim_set_hl(0, "@punctuation.delimiter", {fg = neonplasma.base08, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "@punctuation.bracket", {fg = neonplasma.base08, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "@punctuation.special", {fg = neonplasma.base08, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "@string", {link = "String"})
vim.api.nvim_set_hl(0, "@string.regex", {fg = neonplasma.base07, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "@string.escape", {fg = neonplasma.base15, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "@character", {link = "Character"})
vim.api.nvim_set_hl(0, "@boolean", {link = "Boolean"})
vim.api.nvim_set_hl(0, "@number", {link = "Number"})
vim.api.nvim_set_hl(0, "@float", {link = "Float"})
vim.api.nvim_set_hl(0, "@function", {fg = neonplasma.base12, bg = neonplasma.none, bold = true})
vim.api.nvim_set_hl(0, "@function.builtin", {fg = neonplasma.base12, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "@function.macro", {fg = neonplasma.base07, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "@method", {fg = neonplasma.base07, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "@constructor", {fg = neonplasma.base09, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "@parameter", {fg = neonplasma.base04, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "@keyword", {fg = neonplasma.base09, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "@keyword.function", {fg = neonplasma.base08, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "@keyword.operator", {fg = neonplasma.base08, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "@conditional", {fg = neonplasma.base09, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "@repeat", {fg = neonplasma.base09, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "@label", {fg = neonplasma.base15, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "@include", {fg = neonplasma.base09, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "@exception", {fg = neonplasma.base15, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "@type", {link = "Type"})
vim.api.nvim_set_hl(0, "@type.builtin", {link = "Type"})
vim.api.nvim_set_hl(0, "@attribute", {fg = neonplasma.base15, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "@field", {fg = neonplasma.base04, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "@property", {fg = neonplasma.base10, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "@variable", {fg = neonplasma.base04, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "@variable.builtin", {fg = neonplasma.base04, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "@constant", {fg = neonplasma.base14, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "@constant.builtin", {fg = neonplasma.base07, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "@constant.macro", {fg = neonplasma.base07, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "@namespace", {fg = neonplasma.base07, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "@symbol", {fg = neonplasma.base15, bg = neonplasma.none, bold = true})
vim.api.nvim_set_hl(0, "@text", {fg = neonplasma.base04, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "@text.strong", {fg = neonplasma.none, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "@text.emphasis", {fg = neonplasma.base10, bg = neonplasma.none, bold = true})
vim.api.nvim_set_hl(0, "@text.underline", {fg = neonplasma.base10, bg = neonplasma.none, underline = true})
vim.api.nvim_set_hl(0, "@text.strike", {fg = neonplasma.base10, bg = neonplasma.none, strikethrough = true})
vim.api.nvim_set_hl(0, "@text.title", {fg = neonplasma.base10, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "@text.literal", {fg = neonplasma.base04, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "@text.uri", {fg = neonplasma.base14, bg = neonplasma.none, underline = true})
vim.api.nvim_set_hl(0, "@tag", {fg = neonplasma.base09, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "@tag.attribute", {fg = neonplasma.base15, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "@tag.delimiter", {fg = neonplasma.base15, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "@reference", {fg = neonplasma.base04, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "NvimInternalError", {fg = neonplasma.base00, bg = neonplasma.base08})
vim.api.nvim_set_hl(0, "NormalFloat", {fg = neonplasma.base05, bg = neonplasma.blend})
vim.api.nvim_set_hl(0, "FloatBorder", {fg = neonplasma.blend, bg = neonplasma.blend})
vim.api.nvim_set_hl(0, "NormalNC", {fg = neonplasma.base05, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "TermCursor", {fg = neonplasma.base00, bg = neonplasma.base04})
vim.api.nvim_set_hl(0, "TermCursorNC", {fg = neonplasma.base00, bg = neonplasma.base04})
vim.api.nvim_set_hl(0, "StatusLine", {fg = neonplasma.base04, bg = neonplasma.base00})
vim.api.nvim_set_hl(0, "StatusLineNC", {fg = neonplasma.base04, bg = neonplasma.base01})
vim.api.nvim_set_hl(0, "StatusReplace", {fg = neonplasma.base00, bg = neonplasma.base08})
vim.api.nvim_set_hl(0, "StatusInsert", {fg = neonplasma.base00, bg = neonplasma.base12})
vim.api.nvim_set_hl(0, "StatusVisual", {fg = neonplasma.base00, bg = neonplasma.base14})
vim.api.nvim_set_hl(0, "StatusTerminal", {fg = neonplasma.base00, bg = neonplasma.base11})
vim.api.nvim_set_hl(0, "StatusNormal", {fg = neonplasma.base00, bg = neonplasma.base15})
vim.api.nvim_set_hl(0, "StatusCommand", {fg = neonplasma.base00, bg = neonplasma.base13})
vim.api.nvim_set_hl(0, "StatusLineDiagnosticWarn", {fg = neonplasma.base14, bg = neonplasma.base00, bold = true})
vim.api.nvim_set_hl(0, "StatusLineDiagnosticError", {fg = neonplasma.base10, bg = neonplasma.base00, bold = true})
vim.api.nvim_set_hl(0, "TelescopeBorder", {fg = neonplasma.blend, bg = neonplasma.blend})
vim.api.nvim_set_hl(0, "TelescopePromptBorder", {fg = neonplasma.base02, bg = neonplasma.base02})
vim.api.nvim_set_hl(0, "TelescopePromptNormal", {fg = neonplasma.base05, bg = neonplasma.base02})
vim.api.nvim_set_hl(0, "TelescopePromptPrefix", {fg = neonplasma.base08, bg = neonplasma.base02})
vim.api.nvim_set_hl(0, "TelescopeNormal", {fg = neonplasma.none, bg = neonplasma.blend})
vim.api.nvim_set_hl(0, "TelescopePreviewTitle", {fg = neonplasma.base02, bg = neonplasma.base12})
vim.api.nvim_set_hl(0, "TelescopePromptTitle", {fg = neonplasma.base02, bg = neonplasma.base11})
vim.api.nvim_set_hl(0, "TelescopeResultsTitle", {fg = neonplasma.blend, bg = neonplasma.blend})
vim.api.nvim_set_hl(0, "TelescopeSelection", {fg = neonplasma.none, bg = neonplasma.base02})
vim.api.nvim_set_hl(0, "TelescopePreviewLine", {fg = neonplasma.none, bg = neonplasma.base01})
vim.api.nvim_set_hl(0, "TelescopeMatching", {fg = neonplasma.base08, bg = neonplasma.none, bold = true, italic = true})
vim.api.nvim_set_hl(0, "NotifyERRORBorder", {fg = neonplasma.base08, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "NotifyWARNBorder", {fg = neonplasma.base14, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "NotifyINFOBorder", {fg = neonplasma.base05, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "NotifyDEBUGBorder", {fg = neonplasma.base13, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "NotifyTRACEBorder", {fg = neonplasma.base13, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "NotifyERRORIcon", {fg = neonplasma.base08, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "NotifyWARNIcon", {fg = neonplasma.base14, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "NotifyINFOIcon", {fg = neonplasma.base05, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "NotifyDEBUGIcon", {fg = neonplasma.base13, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "NotifyTRACEIcon", {fg = neonplasma.base13, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "NotifyERRORTitle", {fg = neonplasma.base08, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "NotifyWARNTitle", {fg = neonplasma.base14, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "NotifyINFOTitle", {fg = neonplasma.base05, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "NotifyDEBUGTitle", {fg = neonplasma.base13, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "NotifyTRACETitle", {fg = neonplasma.base13, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "CmpItemAbbr", {fg = "#adadad", bg = neonplasma.none})
vim.api.nvim_set_hl(0, "CmpItemAbbrMatch", {fg = neonplasma.base05, bg = neonplasma.none, bold = true})
vim.api.nvim_set_hl(0, "CmpItemAbbrMatchFuzzy", {fg = neonplasma.base04, bg = neonplasma.none, bold = true})
vim.api.nvim_set_hl(0, "CmpItemMenu", {fg = neonplasma.base04, bg = neonplasma.none, italic = true})
vim.api.nvim_set_hl(0, "CmpItemKindInterface", {fg = neonplasma.base01, bg = neonplasma.base08})
vim.api.nvim_set_hl(0, "CmpItemKindColor", {fg = neonplasma.base01, bg = neonplasma.base08})
vim.api.nvim_set_hl(0, "CmpItemKindTypeParameter", {fg = neonplasma.base01, bg = neonplasma.base08})
vim.api.nvim_set_hl(0, "CmpItemKindText", {fg = neonplasma.base01, bg = neonplasma.base09})
vim.api.nvim_set_hl(0, "CmpItemKindEnum", {fg = neonplasma.base01, bg = neonplasma.base09})
vim.api.nvim_set_hl(0, "CmpItemKindKeyword", {fg = neonplasma.base01, bg = neonplasma.base09})
vim.api.nvim_set_hl(0, "CmpItemKindConstant", {fg = neonplasma.base01, bg = neonplasma.base10})
vim.api.nvim_set_hl(0, "CmpItemKindConstructor", {fg = neonplasma.base01, bg = neonplasma.base10})
vim.api.nvim_set_hl(0, "CmpItemKindReference", {fg = neonplasma.base01, bg = neonplasma.base10})
vim.api.nvim_set_hl(0, "CmpItemKindFunction", {fg = neonplasma.base01, bg = neonplasma.base11})
vim.api.nvim_set_hl(0, "CmpItemKindStruct", {fg = neonplasma.base01, bg = neonplasma.base11})
vim.api.nvim_set_hl(0, "CmpItemKindClass", {fg = neonplasma.base01, bg = neonplasma.base11})
vim.api.nvim_set_hl(0, "CmpItemKindModule", {fg = neonplasma.base01, bg = neonplasma.base11})
vim.api.nvim_set_hl(0, "CmpItemKindOperator", {fg = neonplasma.base01, bg = neonplasma.base11})
vim.api.nvim_set_hl(0, "CmpItemKindField", {fg = neonplasma.base01, bg = neonplasma.base12})
vim.api.nvim_set_hl(0, "CmpItemKindProperty", {fg = neonplasma.base01, bg = neonplasma.base12})
vim.api.nvim_set_hl(0, "CmpItemKindEvent", {fg = neonplasma.base01, bg = neonplasma.base12})
vim.api.nvim_set_hl(0, "CmpItemKindUnit", {fg = neonplasma.base01, bg = neonplasma.base13})
vim.api.nvim_set_hl(0, "CmpItemKindSnippet", {fg = neonplasma.base01, bg = neonplasma.base13})
vim.api.nvim_set_hl(0, "CmpItemKindFolder", {fg = neonplasma.base01, bg = neonplasma.base13})
vim.api.nvim_set_hl(0, "CmpItemKindVariable", {fg = neonplasma.base01, bg = neonplasma.base14})
vim.api.nvim_set_hl(0, "CmpItemKindFile", {fg = neonplasma.base01, bg = neonplasma.base14})
vim.api.nvim_set_hl(0, "CmpItemKindMethod", {fg = neonplasma.base01, bg = neonplasma.base15})
vim.api.nvim_set_hl(0, "CmpItemKindValue", {fg = neonplasma.base01, bg = neonplasma.base15})
vim.api.nvim_set_hl(0, "CmpItemKindEnumMember", {fg = neonplasma.base01, bg = neonplasma.base15})
vim.api.nvim_set_hl(0, "NvimTreeImageFile", {fg = neonplasma.base12, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "NvimTreeFolderIcon", {fg = neonplasma.base12, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "NvimTreeWinSeparator", {fg = neonplasma.base00, bg = neonplasma.base00})
vim.api.nvim_set_hl(0, "NvimTreeFolderName", {fg = neonplasma.base09, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "NvimTreeIndentMarker", {fg = neonplasma.base02, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "NvimTreeEmptyFolderName", {fg = neonplasma.base15, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "NvimTreeOpenedFolderName", {fg = neonplasma.base15, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "NvimTreeNormal", {fg = neonplasma.base04, bg = neonplasma.base00})
vim.api.nvim_set_hl(0, "NeogitBranch", {fg = neonplasma.base10, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "NeogitRemote", {fg = neonplasma.base09, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "NeogitHunkHeader", {fg = neonplasma.base04, bg = neonplasma.base02})
vim.api.nvim_set_hl(0, "NeogitHunkHeaderHighlight", {fg = neonplasma.base04, bg = neonplasma.base03})
vim.api.nvim_set_hl(0, "HydraRed", {fg = neonplasma.base12, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "HydraBlue", {fg = neonplasma.base09, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "HydraAmaranth", {fg = neonplasma.base10, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "HydraTeal", {fg = neonplasma.base08, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "HydraHint", {fg = neonplasma.none, bg = neonplasma.blend})
vim.api.nvim_set_hl(0, "alpha1", {fg = neonplasma.base03, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "alpha2", {fg = neonplasma.base04, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "alpha3", {fg = neonplasma.base03, bg = neonplasma.none})
vim.api.nvim_set_hl(0, "CodeBlock", {fg = neonplasma.none, bg = neonplasma.base01})
vim.api.nvim_set_hl(0, "BufferLineDiagnostic", {fg = neonplasma.base10, bg = neonplasma.none, bold = true})
vim.api.nvim_set_hl(0, "BufferLineDiagnosticVisible", {fg = neonplasma.base10, bg = neonplasma.none, bold = true})
vim.api.nvim_set_hl(0, "htmlH1", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "mkdRule", {link = "markdownRule"})
vim.api.nvim_set_hl(0, "mkdListItem", {link = "markdownListMarker"})
vim.api.nvim_set_hl(0, "mkdListItemCheckbox", {link = "markdownListMarker"})
vim.api.nvim_set_hl(0, "VimwikiHeader1", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "VimwikiHeader2", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "VimwikiHeader3", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "VimwikiHeader4", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "VimwikiHeader5", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "VimwikiHeader6", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "VimwikiHeaderChar", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "VimwikiList", {link = "markdownListMarker"})
vim.api.nvim_set_hl(0, "VimwikiLink", {link = "markdownUrl"})
vim.api.nvim_set_hl(0, "VimwikiCode", {link = "markdownCode"})
return {neonplasma = neonplasma}
