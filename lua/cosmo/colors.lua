---@diagnostic disable: undefined-global

local M = {}

M.palette = {
	-- Base shades (from Cosmo VSCode theme)
	bg0 = "#0F131A", -- sidebar/activity bar background
	bg1 = "#1B212E", -- editor background
	bg2 = "#2a2f38", -- line highlight
	bg3 = "#21252B", -- status bar, widget background
	bg4 = "#3E4451", -- selection background

	fg0 = "#f8f8f0", -- cursor foreground
	fg1 = "#abb2bf", -- default foreground
	fg2 = "#d7dae0", -- bright foreground
	fg3 = "#495162", -- line numbers
	fg4 = "#676f7d", -- comments

	-- Aliases for plugin integrations
	fg = "#abb2bf",
	bg = "#1B212E",

	selbg = "#3E4451", -- selection background
	selfg = "#d7dae0", -- selection foreground

	comment = "#676f7d", -- comments

	-- Accent palette (from Cosmo tokenColors)
	red = "#e06c75", -- keywords, language variables, tags
	crimson = "#c24038", -- errors
	orange = "#d19a66", -- parameters
	amber = "#B39C4D", -- accent color
	yellow = "#e5c07b", -- strings
	gold = "#e5c07b", -- strings variant
	ochre = "#d19a66", -- parameters variant

	green = "#98c379", -- functions, attributes
	teal = "#56b6c2", -- types, constants, built-in
	blue = "#61afef", -- classes, objects
	purple = "#c678dd", -- numbers, units
	cyan = "#56b6c2", -- constants, types

	pink = "#c678dd", -- numbers variant
	magenta = "#c678dd", -- numbers variant

	gray = "#495162",
	gray1 = "#676f7d",
	gray2 = "#495162",
}

function M.apply()
	local p = M.palette
	local function set(group, opts)
		vim.api.nvim_set_hl(0, group, opts)
	end

	vim.cmd("highlight clear")
	if vim.fn.exists("syntax_on") == 1 then
		vim.cmd("syntax reset")
	end
	vim.o.background = "dark"
	vim.g.colors_name = "cosmo"

	set("Normal", { fg = p.fg1, bg = p.bg1 })
	set("NormalFloat", { fg = p.fg1, bg = p.bg3 })
	set("FloatBorder", { fg = p.bg2, bg = p.bg3 })
	set("SignColumn", { fg = p.bg2, bg = p.bg1 })
	set("NonText", { fg = p.bg2 })

	set("Cursor", { fg = p.bg1, bg = p.fg0 })
	set("CursorLine", { bg = p.bg2 })
	set("CursorColumn", { bg = p.bg2 })
	set("CursorLineNr", { fg = p.amber })
	set("LineNr", { fg = p.fg3 })
	set("MatchParen", { fg = p.orange, bg = p.bg4, bold = true })

	set("Visual", { bg = p.selbg })
	set("VisualNOS", { bg = p.selbg })
	set("Search", { bg = "#42557B" })
	set("IncSearch", { bg = "#314365" })
	set("Substitute", { bg = "#314365" })
	set("HighlightedyankRegion", { bg = p.bg4 })

	set("FoldColumn", { fg = p.bg2, bg = p.bg1 })
	set("Folded", { fg = p.fg2, bg = p.bg3 })

	set("StatusLine", { fg = p.fg1, bg = p.bg3 })
	set("StatusLineNC", { fg = p.fg3, bg = p.bg2 })
	set("WinSeparator", { fg = p.bg2 })
	set("VertSplit", { fg = p.bg2 })
	set("TabLine", { fg = p.fg3, bg = p.bg2 })
	set("TabLineFill", { bg = p.bg1 })
	set("TabLineSel", { fg = p.fg1, bg = p.bg3, bold = true })

	set("Pmenu", { fg = p.fg2, bg = p.bg3 })
	set("PmenuSel", { fg = p.fg1, bg = p.bg2 })
	set("PmenuSbar", { bg = p.bg2 })
	set("PmenuThumb", { bg = p.fg3 })
	set("WildMenu", { fg = p.bg1, bg = p.orange })

	set("DiffAdd", { fg = p.teal })
	set("DiffDelete", { fg = p.crimson })
	set("DiffChange", { fg = p.orange })
	set("DiffText", { fg = p.orange, bold = true })

	set("DiagnosticOk", { fg = p.teal })
	set("DiagnosticHint", { fg = p.blue })
	set("DiagnosticInfo", { fg = p.gold })
	set("DiagnosticWarn", { fg = p.amber })
	set("DiagnosticError", { fg = p.crimson })

	-- Syntax highlighting (matching Cosmo VSCode theme)
	set("Comment", { fg = p.comment, italic = true }) -- #676f7d
	set("Constant", { fg = p.teal }) -- #56b6c2
	set("String", { fg = p.yellow }) -- #e5c07b
	set("Character", { fg = p.yellow }) -- #e5c07b
	set("Number", { fg = p.purple }) -- #c678dd
	set("Float", { fg = p.purple }) -- #c678dd
	set("Boolean", { fg = p.teal }) -- #56b6c2
	set("Identifier", { fg = p.fg1 }) -- #abb2bf
	set("Function", { fg = p.green }) -- #98c379
	set("Statement", { fg = p.red }) -- #e06c75
	set("Keyword", { fg = p.red }) -- #e06c75
	set("Conditional", { fg = p.red }) -- #e06c75
	set("Repeat", { fg = p.red }) -- #e06c75
	set("Operator", { fg = p.red }) -- #e06c75
	set("Exception", { fg = p.red }) -- #e06c75
	set("PreProc", { fg = p.red }) -- #e06c75
	set("Include", { fg = p.blue }) -- #61afef
	set("Define", { fg = p.red }) -- #e06c75
	set("Macro", { fg = p.red }) -- #e06c75
	set("PreCondit", { fg = p.red }) -- #e06c75
	set("Type", { fg = p.teal }) -- #56b6c2
	set("StorageClass", { fg = p.red }) -- #e06c75
	set("Structure", { fg = p.teal }) -- #56b6c2
	set("Typedef", { fg = p.teal }) -- #56b6c2
	set("Special", { fg = p.fg1 }) -- #abb2bf
	set("SpecialChar", { fg = p.purple }) -- #c678dd
	set("Tag", { fg = p.red }) -- #e06c75
	set("Delimiter", { fg = p.fg1 }) -- #abb2bf
	set("SpecialComment", { fg = p.comment, italic = true }) -- #676f7d
	set("Underlined", { fg = p.blue, underline = true }) -- #61afef
	set("Todo", { fg = p.bg1, bg = p.yellow, bold = true }) -- #e5c07b

	-- Terminal colors (from Cosmo VSCode theme)
	vim.g.terminal_color_0 = "#2d3139" -- ansiBlack
	vim.g.terminal_color_1 = "#e06c75" -- ansiRed
	vim.g.terminal_color_2 = "#98c379" -- ansiGreen
	vim.g.terminal_color_3 = "#B39C4D" -- ansiYellow
	vim.g.terminal_color_4 = "#B39C4D" -- ansiBlue
	vim.g.terminal_color_5 = "#c678dd" -- ansiMagenta
	vim.g.terminal_color_6 = "#56b6c2" -- ansiCyan
	vim.g.terminal_color_7 = "#d7dae0" -- ansiWhite
	vim.g.terminal_color_8 = "#7f848e" -- ansiBrightBlack
	vim.g.terminal_color_9 = "#f44747" -- ansiBrightRed
	vim.g.terminal_color_10 = "#98c379" -- ansiBrightGreen
	vim.g.terminal_color_11 = "#B39C4D" -- ansiBrightYellow
	vim.g.terminal_color_12 = "#B39C4D" -- ansiBrightBlue
	vim.g.terminal_color_13 = "#7e0097" -- ansiBrightMagenta
	vim.g.terminal_color_14 = "#56b6c2" -- ansiBrightCyan
	vim.g.terminal_color_15 = "#d7dae0" -- ansiBrightWhite
	vim.g.terminal_color_background = "#1B212E"
	vim.g.terminal_color_foreground = "#abb2bf"

	require("cosmo.treesitter").apply()
	require("cosmo.snacks").apply()
	require("cosmo.todo-comments").apply()
	require("cosmo.noice").apply()
	require("cosmo.neotree").apply()
end

return M

