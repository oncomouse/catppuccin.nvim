local M = {}

function M.get()
	return {
		FocusedSymbol = { fg = C.yellow, ctermfg = T.yellow, bg = C.none, ctermbg = T.none },
	}
end

return M
