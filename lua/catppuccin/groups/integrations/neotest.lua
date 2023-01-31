local M = {}

function M.get()
	return {
		NeotestPassed = { fg = C.green, ctermfg = T.green },
		NeotestFailed = { fg = C.red, ctermfg = T.red },
		NeotestRunning = { fg = C.yellow, ctermfg = T.yellow },
		NeotestSkipped = { fg = C.blue, ctermfg = T.blue },
		NeotestTest = { fg = C.text, ctermfg = T.text },
		NeotestNamespace = { fg = C.mauve, ctermfg = T.mauve },
		NeotestFocused = { style = { "bold", "underline" } },
		NeotestFile = { fg = C.blue, ctermfg = T.blue },
		NeotestDir = { fg = C.blue, ctermfg = T.blue },
		NeotestIndent = { fg = C.overlay1, ctermfg = T.overlay1 },
		NeotestExpandMarker = { fg = C.overlay1, ctermfg = T.overlay1 },
		NeotestAdapterName = { fg = C.maroon, ctermfg = T.maroon },
		NeotestWinSelect = { fg = C.blue, ctermfg = T.blue, style = { "bold" } },
		NeotestMarked = { fg = C.peach, ctermfg = T.peach, style = { "bold" } },
		NeotestTarget = { fg = C.red, ctermfg = T.red },
		NeotestUnknown = { fg = C.text, ctermfg = T.text },
	}
end

return M
