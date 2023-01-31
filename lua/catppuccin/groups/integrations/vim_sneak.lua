local M = {}

function M.get()
	return {
		Sneak = { fg = C.overlay2, ctermfg = T.overlay2, bg = C.pink, ctermbg = T.pink },
		SneakScope = { bg = C.text, ctermbg = T.text },
	}
end

return M
