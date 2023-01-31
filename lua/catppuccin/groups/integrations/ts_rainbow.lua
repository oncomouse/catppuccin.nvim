local M = {}

function M.get()
	return {
		rainbowcol1 = { fg = C.red, ctermfg = T.red },
		rainbowcol2 = { fg = C.teal, ctermfg = T.teal },
		rainbowcol3 = { fg = C.yellow, ctermfg = T.yellow },
		rainbowcol4 = { fg = C.blue, ctermfg = T.blue },
		rainbowcol5 = { fg = C.pink, ctermfg = T.pink },
		rainbowcol6 = { fg = C.flamingo, ctermfg = T.flamingo },
		rainbowcol7 = { fg = C.green, ctermfg = T.green },
	}
end

return M
