local M = {}

function M.get()
	return {
		NotifyERRORBorder = { fg = C.red, ctermfg = T.red },
		NotifyERRORIcon = { fg = C.red, ctermfg = T.red },
		NotifyERRORTitle = { fg = C.red, ctermfg = T.red, style = { "italic" } },
		NotifyWARNBorder = { fg = C.yellow, ctermfg = T.yellow },
		NotifyWARNIcon = { fg = C.yellow, ctermfg = T.yellow },
		NotifyWARNTitle = { fg = C.yellow, ctermfg = T.yellow, style = { "italic" } },
		NotifyINFOBorder = { fg = C.blue, ctermfg = T.blue },
		NotifyINFOIcon = { fg = C.blue, ctermfg = T.blue },
		NotifyINFOTitle = { fg = C.blue, ctermfg = T.blue, style = { "italic" } },
		NotifyDEBUGBorder = { fg = C.peach, ctermfg = T.peach },
		NotifyDEBUGIcon = { fg = C.peach, ctermfg = T.peach },
		NotifyDEBUGTitle = { fg = C.peach, ctermfg = T.peach, style = { "italic" } },
		NotifyTRACEBorder = { fg = C.rosewater, ctermfg = T.rosewater },
		NotifyTRACEIcon = { fg = C.rosewater, ctermfg = T.rosewater },
		NotifyTRACETitle = { fg = C.rosewater, ctermfg = T.rosewater, style = { "italic" } },
	}
end

return M
