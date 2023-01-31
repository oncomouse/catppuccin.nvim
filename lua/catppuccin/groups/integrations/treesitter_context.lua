local M = {}

function M.get()
	return {
		TreesitterContext = {
			bg = O.transparent_background and C.none or C.mantle,
			fg = C.text, ctermfg = T.text,
		},
		TreesitterContextLineNumber = { fg = C.surface1, ctermfg = T.surface1 },
	}
end

return M
