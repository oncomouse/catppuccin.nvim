local M = {}

function M.get()
	return {
		HarpoonWindow = {
			fg = C.text,
			ctermfg = T.text,
			bg = O.transparent_background and C.none or C.base,
			ctermbg = O.transparent_background and T.none or T.base,
		},
		HarpoonBorder = { fg = C.blue, ctermfg = T.blue },
	}
end

return M
