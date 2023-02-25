local M = {}

function M.get()
	return {
		FidgetTask = {
			bg = O.transparent_background and C.none or C.mantle,
			ctermbg = O.transparent_background and T.none or T.mantle,
			fg = C.text,
			ctermfg = T.text,
		},
		FidgetTitle = { fg = C.blue, ctermfg = T.blue },
	}
end

return M
