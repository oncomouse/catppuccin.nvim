local M = {}

function M.get()
	return {
		FidgetTask = {
			bg = O.transparent_background and C.none or C.mantle,
			fg = C.text, ctermfg = T.text,
		},
		FidgetTitle = { fg = C.blue, ctermfg = T.blue },
	}
end

return M
