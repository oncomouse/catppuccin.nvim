local M = {}

function M.get()
	return {
		WhichKey = { fg = C.flamingo, ctermfg = T.flamingo },
		WhichKeyGroup = { fg = C.blue, ctermfg = T.blue },
		WhichKeySeperator = { fg = C.overlay0, ctermfg = T.overlay0 },
		WhichKeyDesc = { fg = C.pink, ctermfg = T.pink },
		WhichKeyBorder = { fg = C.blue, ctermfg = T.blue },
		WhichKeyValue = { fg = C.overlay0, ctermfg = T.overlay0 },
	}
end

return M
