local M = {}

function M.get()
	return {
		PounceMatch = { bg = U.lighten(C.green, 0.7), fg = C.base, ctermfg = T.base, style = { "bold" } },
		PounceGap = { bg = U.darken(C.green, 0.7), fg = C.base, ctermfg = T.base, style = { "bold" } },
		PounceAccept = { bg = C.peach, ctermbg = T.peach, fg = C.base, ctermfg = T.base, style = { "bold" } },
		PounceAcceptBest = { bg = C.teal, ctermbg = T.teal, fg = C.base, ctermfg = T.base, style = { "bold" } },
	}
end

return M
