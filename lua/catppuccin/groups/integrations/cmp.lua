local M = {}

function M.get()
	return {
		CmpItemAbbr = { fg = C.overlay2, ctermfg = T.overlay2 },
		CmpItemAbbrDeprecated = { fg = C.overlay0, ctermfg = T.overlay0, style = { "strikethrough" } },
		CmpItemKind = { fg = C.blue, ctermfg = T.blue },
		CmpItemMenu = { fg = C.text, ctermfg = T.text },
		CmpItemAbbrMatch = { fg = C.text, ctermfg = T.text, style = { "bold" } },
		CmpItemAbbrMatchFuzzy = { fg = C.text, ctermfg = T.text, style = { "bold" } },

		-- kind support
		CmpItemKindSnippet = { fg = C.mauve, ctermfg = T.mauve },
		CmpItemKindKeyword = { fg = C.red, ctermfg = T.red },
		CmpItemKindText = { fg = C.teal, ctermfg = T.teal },
		CmpItemKindMethod = { fg = C.blue, ctermfg = T.blue },
		CmpItemKindConstructor = { fg = C.blue, ctermfg = T.blue },
		CmpItemKindFunction = { fg = C.blue, ctermfg = T.blue },
		CmpItemKindFolder = { fg = C.blue, ctermfg = T.blue },
		CmpItemKindModule = { fg = C.blue, ctermfg = T.blue },
		CmpItemKindConstant = { fg = C.peach, ctermfg = T.peach },
		CmpItemKindField = { fg = C.green, ctermfg = T.green },
		CmpItemKindProperty = { fg = C.green, ctermfg = T.green },
		CmpItemKindEnum = { fg = C.green, ctermfg = T.green },
		CmpItemKindUnit = { fg = C.green, ctermfg = T.green },
		CmpItemKindClass = { fg = C.yellow, ctermfg = T.yellow },
		CmpItemKindVariable = { fg = C.flamingo, ctermfg = T.flamingo },
		CmpItemKindFile = { fg = C.blue, ctermfg = T.blue },
		CmpItemKindInterface = { fg = C.yellow, ctermfg = T.yellow },
		CmpItemKindColor = { fg = C.red, ctermfg = T.red },
		CmpItemKindReference = { fg = C.red, ctermfg = T.red },
		CmpItemKindEnumMember = { fg = C.red, ctermfg = T.red },
		CmpItemKindStruct = { fg = C.blue, ctermfg = T.blue },
		CmpItemKindValue = { fg = C.peach, ctermfg = T.peach },
		CmpItemKindEvent = { fg = C.blue, ctermfg = T.blue },
		CmpItemKindOperator = { fg = C.blue, ctermfg = T.blue },
		CmpItemKindTypeParameter = { fg = C.blue, ctermfg = T.blue },
		CmpItemKindCopilot = { fg = C.teal, ctermfg = T.teal },
	}
end

return M
