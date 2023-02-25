local M = {}

function M.get()
	return {
		Comment = { fg = C.surface2, ctermfg = T.surface2, style = O.styles.comments }, -- just comments
		SpecialComment = { link = "Special" }, -- special things inside a comment
		Constant = { fg = C.peach, ctermfg = T.peach }, -- (preferred) any constant
		String = { fg = C.green, ctermfg = T.green, style = O.styles.strings or {} }, -- a string constant: "this is a string"
		Character = { fg = C.teal, ctermfg = T.teal }, --  a character constant: 'c', '\n'
		Number = { fg = C.peach, ctermfg = T.peach, style = O.styles.numbers or {} }, --   a number constant: 234, 0xff
		Float = { fg = C.peach, ctermfg = T.peach, style = O.styles.numbers or {} }, --    a floating point constant: 2.3e10
		Boolean = { fg = C.peach, ctermfg = T.peach, style = O.styles.booleans or {} }, --  a boolean constant: TRUE, false
		Identifier = { fg = C.flamingo, ctermfg = T.flamingo, style = O.styles.variables or {} }, -- (preferred) any variable name
		Function = { fg = C.blue, ctermfg = T.blue, style = O.styles.functions or {} }, -- function name (also: methods for classes)
		Statement = { fg = C.mauve, ctermfg = T.mauve }, -- (preferred) any statement
		Conditional = { fg = C.mauve, ctermfg = T.mauve, style = O.styles.conditionals or {} }, --  if, then, else, endif, switch, etC.
		Repeat = { fg = C.mauve, ctermfg = T.mauve, style = O.styles.loops or {} }, --   for, do, while, etC.
		Label = { fg = C.sapphire, ctermfg = T.sapphire }, --    case, default, etC.
		Operator = { fg = C.sky, ctermfg = T.sky, style = O.styles.operators or {} }, -- "sizeof", "+", "*", etC.
		Keyword = { fg = C.mauve, ctermfg = T.mauve, style = O.styles.keywords or {} }, --  any other keyword
		-- Exception     = { }, --  try, catch, throw

		PreProc = { fg = C.pink, ctermfg = T.pink }, -- (preferred) generic Preprocessor
		Include = { fg = C.mauve, ctermfg = T.mauve, style = O.styles.keywords or {} }, --  preprocessor #include
		Define = { link = "PreProc" }, -- preprocessor #define
		Macro = { fg = C.mauve, ctermfg = T.mauve }, -- same as Define
		PreCondit = { link = "PreProc" }, -- preprocessor #if, #else, #endif, etc.

		StorageClass = { fg = C.yellow, ctermfg = T.yellow }, -- static, register, volatile, etC.
		Structure = { fg = C.yellow, ctermfg = T.yellow }, --  struct, union, enum, etC.
		Special = { fg = C.pink, ctermfg = T.pink }, -- (preferred) any special symbol
		Type = { fg = C.yellow, ctermfg = T.yellow, style = O.styles.types or {} }, -- (preferred) int, long, char, etC.
		Typedef = { link = "Type" }, --  A typedef
		SpecialChar = { link = "Special" }, -- special character in a constant
		Tag = { link = "Special" }, -- you can use CTRL-] on this
		Delimiter = { link = "Special" }, -- character that needs attention
		-- Specialoverlay0= { }, -- special things inside a overlay0
		Debug = { link = "Special" }, -- debugging statements

		Underlined = { style = { "underline" } }, -- (preferred) text that stands out, HTML links
		Bold = { style = { "bold" } },
		Italic = { style = { "italic" } },
		-- ("Ignore", below, may be invisible...)
		-- Ignore = { }, -- (preferred) left blank, hidden  |hl-Ignore|

		Error = { fg = C.red, ctermfg = T.red }, -- (preferred) any erroneous construct
		Todo = { bg = C.yellow, ctermbg = T.yellow, fg = C.base, ctermfg = T.base, style = { "bold" } }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
		qfLineNr = { fg = C.yellow, ctermfg = T.yellow },
		qfFileName = { fg = C.blue, ctermfg = T.blue },
		htmlH1 = { fg = C.pink, ctermfg = T.pink, style = { "bold" } },
		htmlH2 = { fg = C.blue, ctermfg = T.blue, style = { "bold" } },
		-- mkdHeading = { fg = C.peach, ctermfg = T.peach, style = { "bold" } },
		-- mkdCode = { bg = C.terminal_black, ctermbg = T.terminal_black, fg = C.text, ctermfg = T.text },
		mkdCodeDelimiter = { bg = C.base, ctermbg = T.base, fg = C.text, ctermfg = T.text },
		mkdCodeStart = { fg = C.flamingo, ctermfg = T.flamingo, style = { "bold" } },
		mkdCodeEnd = { fg = C.flamingo, ctermfg = T.flamingo, style = { "bold" } },
		-- mkdLink = { fg = C.blue, ctermfg = T.blue, style = { "underline" } },

		-- debugging
		debugPC = { bg = O.transparent_background and C.none or C.crust, ctermbg = T.crust }, -- used for highlighting the current line in terminal-debug
		debugBreakpoint = { bg = C.base, ctermbg = T.base, fg = C.overlay0, ctermfg = T.overlay0 }, -- used for breakpoint colors in terminal-debug
		-- illuminate
		illuminatedWord = { bg = C.surface1, ctermbg = T.surface1 },
		illuminatedCurWord = { bg = C.surface1, ctermbg = T.surface1 },
		-- diff
		diffAdded = { fg = C.green, ctermfg = T.green },
		diffRemoved = { fg = C.red, ctermfg = T.red },
		diffChanged = { fg = C.blue, ctermfg = T.blue },
		diffOldFile = { fg = C.yellow, ctermfg = T.yellow },
		diffNewFile = { fg = C.peach, ctermfg = T.peach },
		diffFile = { fg = C.blue, ctermfg = T.blue },
		diffLine = { fg = C.overlay0, ctermfg = T.overlay0 },
		diffIndexLine = { fg = C.teal, ctermfg = T.teal },
		DiffAdd = { bg = U.darken(C.green, 0.18, C.base) }, -- diff mode: Added line |diff.txt|
		DiffChange = { bg = U.darken(C.blue, 0.07, C.base) }, -- diff mode: Changed line |diff.txt|
		DiffDelete = { bg = U.darken(C.red, 0.18, C.base) }, -- diff mode: Deleted line |diff.txt|
		DiffText = { bg = U.darken(C.blue, 0.18, C.base) }, -- diff mode: Changed text within a changed line |diff.txt|
		-- NeoVim
		healthError = { fg = C.red, ctermfg = T.red },
		healthSuccess = { fg = C.teal, ctermfg = T.teal },
		healthWarning = { fg = C.yellow, ctermfg = T.yellow },
		-- misc

		-- glyphs
		GlyphPalette1 = { fg = C.red, ctermfg = T.red },
		GlyphPalette2 = { fg = C.teal, ctermfg = T.teal },
		GlyphPalette3 = { fg = C.yellow, ctermfg = T.yellow },
		GlyphPalette4 = { fg = C.blue, ctermfg = T.blue },
		GlyphPalette6 = { fg = C.teal, ctermfg = T.teal },
		GlyphPalette7 = { fg = C.text, ctermfg = T.text },
		GlyphPalette9 = { fg = C.red, ctermfg = T.red },
	}
end

return M
