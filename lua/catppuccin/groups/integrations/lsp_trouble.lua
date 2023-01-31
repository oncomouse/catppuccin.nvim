local M = {}

function M.get()
	return {
		TroubleText = { fg = C.green, ctermfg = T.green },
		TroubleCount = { fg = C.pink, ctermfg = T.pink, bg = C.surface1, ctermbg = T.surface1 },
		TroubleNormal = { fg = C.text, ctermfg = T.text, bg = C.crust, ctermbg = T.crust },
	}
end

return M
