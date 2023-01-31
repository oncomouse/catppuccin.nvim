local M = {}

function M.get()
	return {
		OverseerPENDING = { fg = C.grey, ctermfg = T.grey },
		OverseerRUNNING = { fg = C.yellow, ctermfg = T.yellow },
		OverseerSUCCESS = { fg = C.green, ctermfg = T.green },
		OverseerCANCELED = { fg = C.overlay2, ctermfg = T.overlay2 },
		OverseerFAILURE = { fg = C.red, ctermfg = T.red },
		OverseerTask = { fg = C.blue, ctermfg = T.blue },
		OverseerTaskBorder = { fg = C.sky, ctermfg = T.sky },
		OverseerOutput = { fg = C.text, ctermfg = T.text },
		OverseerComponent = { fg = C.yellow, ctermfg = T.yellow },
		OverseerField = { fg = C.green, ctermfg = T.green },
	}
end

return M
