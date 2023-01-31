local M = {}

function M.custom_colors()
	local C = require("catppuccin.palettes").get_palette()
	return {
		normal_bg = C.base, ctermbg = T.base,
		title_bg = C.green, ctermbg = T.green,
		red = C.red,
		magenta = C.maroon,
		orange = C.peach,
		yellow = C.yellow,
		green = C.green,
		cyan = C.sky,
		blue = C.blue,
		purple = C.mauve,
		white = C.text,
		black = C.crust,
	}
end

function M.custom_kind()
	local C = require("catppuccin.palettes").get_palette()
	return {
		File = { " ", C.text },
		Module = { " ", C.blue },
		Namespace = { " ", C.peach },
		Package = { " ", C.mauve },
		Class = { " ", C.mauve },
		Method = { " ", C.mauve },
		Property = { " ", C.sky },
		Field = { " ", C.teal },
		Constructor = { " ", C.blue },
		Enum = { "了", C.green },
		Interface = { " ", C.peach },
		Function = { " ", C.mauve },
		Variable = { " ", C.blue },
		Constant = { " ", C.sky },
		String = { " ", C.green },
		Number = { " ", C.green },
		Boolean = { " ", C.peach },
		Array = { " ", C.blue },
		Object = { " ", C.peach },
		Key = { " ", C.red },
		Null = { " ", C.red },
		EnumMember = { " ", C.green },
		Struct = { " ", C.mauve },
		Event = { " ", C.mauve },
		Operator = { " ", C.green },
		TypeParameter = { " ", C.green },
		TypeAlias = { " ", C.green },
		Parameter = { " ", C.blue },
		StaticMethod = { "ﴂ ", C.peach },
		Macro = { " ", C.red },
	}
end

function M.get()
	return {
		TitleString = { fg = C.text, ctermfg = T.text },
		TitleIcon = { fg = C.blue, ctermfg = T.blue },
		SagaBorder = { fg = C.blue, ctermfg = T.blue, bg = C.none, ctermbg = T.none },
		SagaNormal = { bg = O.transparent_background and C.none or C.base },
		SagaExpand = { fg = C.green, ctermfg = T.green },
		SagaCollapse = { fg = C.green, ctermfg = T.green },
		SagaBeacon = { bg = U.darken(C.surface0, 0.8, C.crust) },
		ActionPreviewTitle = { fg = C.mauve, ctermfg = T.mauve, bg = O.transparent_background and C.none or C.base },
		CodeActionText = { fg = C.green, ctermfg = T.green },
		CodeActionNumber = { fg = C.pink, ctermfg = T.pink },
		FinderSelection = { fg = C.blue, ctermfg = T.blue, style = { "bold" } },
		FinderFileName = { fg = C.text, ctermfg = T.text },
		FinderIcon = { fg = C.flamingo, ctermfg = T.flamingo },
		FinderCount = { fg = C.lavender, ctermfg = T.lavender },
		FinderType = { fg = C.flamingo, ctermfg = T.flamingo },
		FinderSpinnerTitle = { fg = C.mauve, ctermfg = T.mauve, style = { "bold" } },
		FinderSpinner = { fg = C.mauve, ctermfg = T.mauve, style = { "bold" } },
		FinderVirtText = { fg = C.overlay2, ctermfg = T.overlay2 },
		RenameNormal = { fg = C.text, ctermfg = T.text },
		DiagnosticSource = { fg = C.overlay0, ctermfg = T.overlay0 },
		DiagnosticPos = { fg = C.surface2, ctermfg = T.surface2 },
		DiagnosticWord = { fg = C.text, ctermfg = T.text },
		CallHierarchyIcon = { fg = C.mauve, ctermfg = T.mauve },
		CallHierarchyTitle = { fg = C.blue, ctermfg = T.blue },
		SagaShadow = { bg = C.crust, ctermbg = T.crust },
		OutlineIndent = { fg = C.overlay2, ctermfg = T.overlay2 },
	}
end

return M
