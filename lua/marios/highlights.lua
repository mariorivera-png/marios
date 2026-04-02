local M = {}

function M.setup()
	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end
	vim.o.termguicolors = true
	vim.g.colors_name = "marios"

	local c = require("marios.colors")
	local highlights = {
		-- Base
		Normal = { fg = c.fg, bg = c.bg },
		NormalFloat = { fg = c.fg, bg = c.bg },
		NormalNC = { fg = c.fg, bg = c.bg },
		Comment = { fg = c.Lgray, italic = true },
		Constant = { fg = c.yellow },
		String = { fg = c.green },
		Character = { fg = c.green },
		Number = { fg = c.magenta },
		Boolean = { fg = c.magenta },
		Float = { fg = c.magenta },
		Identifier = { fg = c.blue },
		Function = { fg = c.cyan },
		Statement = { fg = c.red },
		Conditional = { fg = c.red },
		Repeat = { fg = c.red },
		Label = { fg = c.red },
		Operator = { fg = c.fg },
		Keyword = { fg = c.red },
		Exception = { fg = c.red },
		PreProc = { fg = c.magenta },
		Include = { fg = c.magenta },
		Define = { fg = c.magenta },
		Macro = { fg = c.magenta },
		PreCondit = { fg = c.magenta },
		Type = { fg = c.yellow },
		StorageClass = { fg = c.yellow },
		Structure = { fg = c.yellow },
		Typedef = { fg = c.yellow },
		Special = { fg = c.cyan },
		SpecialChar = { fg = c.cyan },
		Tag = { fg = c.blue },
		Delimiter = { fg = c.fg },
		SpecialComment = { fg = c.Lgray },
		Debug = { fg = c.red },
		Underlined = { underline = true },
		Ignore = { fg = c.Lgray },
		Error = { fg = c.red, bold = true },
		Todo = { fg = c.yellow, bold = true },
		-- UI Elements
		ColorColumn = { bg = c.Lgray },
		Cursor = { fg = c.bg, bg = c.fg },
		CursorLine = { bg = "none" },
		CursorColumn = { bg = c.Dgrey },
		CursorLineNr = { fg = c.yellow, bold = true },
		LineNr = { fg = c.Lgray },
		SignColumn = { bg = c.Dgrey },
		StatusLine = { fg = c.fg, bg = "none" },
		StatusLineNC = { fg = c.Lgray, bg = c.bg },
		VertSplit = { fg = c.Lgray },
		WinSeparator = { fg = c.Lgray },
		Pmenu = { fg = c.fg, bg = c.Lgray },
		PmenuSel = { fg = c.bg, bg = c.blue },
		PmenuSbar = { bg = c.Lgray },
		PmenuThumb = { bg = c.fg },
		TabLine = { fg = c.Lgray, bg = c.bg },
		TabLineFill = { bg = c.bg },
		TabLineSel = { fg = c.fg, bg = c.blue },
		Visual = { bg = c.Dgrey },
		Search = { fg = c.bg, bg = c.yellow },
		IncSearch = { fg = c.bg, bg = c.cyan },
		MatchParen = { fg = c.yellow, bold = true },
		DashboardHeader = { fg = c.red, bg = "none" },
		DashboardDesc = { fg = c.blue },
		DashboardIcon = { fg = c.blue },
		DashboardShortCut = { fg = c.cyan },
		DashboardKey = { fg = c.orange },
		-- Diagnostics
		DiagnosticError = { fg = c.red },
		DiagnosticWarn = { fg = c.yellow },
		DiagnosticInfo = { fg = c.cyan },
		DiagnosticHint = { fg = c.Lgray },
		DiagnosticUnderlineError = { undercurl = true, sp = c.red },
		DiagnosticUnderlineWarn = { undercurl = true, sp = c.yellow },
		DiagnosticUnderlineInfo = { undercurl = true, sp = c.cyan },
		DiagnosticUnderlineHint = { undercurl = true, sp = c.Lgray },
		-- TreeSitter
		["@variable"] = { fg = c.fg },
		["@variable.builtin"] = { fg = c.magenta },
		["@variable.parameter"] = { fg = c.fg },
		["@variable.member"] = { fg = c.blue },
		["@constant"] = { fg = c.yellow },
		["@constant.builtin"] = { fg = c.magenta },
		["@module"] = { fg = c.blue },
		["@string"] = { fg = c.green },
		["@number"] = { fg = c.magenta },
		["@boolean"] = { fg = c.magenta },
		["@function"] = { fg = c.cyan },
		["@function.builtin"] = { fg = c.cyan },
		["@function.method"] = { fg = c.cyan },
		["@constructor"] = { fg = c.yellow },
		["@keyword"] = { fg = c.red },
		["@keyword.function"] = { fg = c.red },
		["@keyword.return"] = { fg = c.red },
		["@operator"] = { fg = c.fg },
		["@type"] = { fg = c.yellow },
		["@type.builtin"] = { fg = c.yellow },
		["@property"] = { fg = c.blue },
		["@comment"] = { fg = c.Lgray, italic = true },
		["@tag"] = { fg = c.blue },
		["@tag.attribute"] = { fg = c.yellow },
		["@tag.delimiter"] = { fg = c.fg },
	}

	for group, settings in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, settings)
	end
end

return M
