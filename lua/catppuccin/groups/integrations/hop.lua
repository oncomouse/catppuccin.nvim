local M = {}

function M.get()
	local bg = O.transparent_background and C.none or C.base
	local ctermbg = O.transparent_background and T.none or T.base
	return {
		HopNextKey = { bg = bg, ctermbg = ctermbg, fg = C.peach, ctermfg = T.peach, style = { "bold", "underline" } },
		HopNextKey1 = { bg = bg, ctermbg = ctermbg, fg = C.blue, ctermfg = T.blue, style = { "bold" } },
		HopNextKey2 = { bg = bg, ctermbg = ctermbg, fg = C.teal, ctermfg = T.teal, style = { "bold", "italic" } },
		HopUnmatched = { bg = bg, ctermbg = ctermbg, fg = C.overlay0, ctermfg = T.overlay0 },
	}
end

return M
