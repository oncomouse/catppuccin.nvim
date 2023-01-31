local M = {}

function M.get()
	local bg = O.transparent_background and C.none or C.base
	return {
		HopNextKey = { bg = bg, fg = C.peach, ctermfg = T.peach, style = { "bold", "underline" } },
		HopNextKey1 = { bg = bg, fg = C.blue, ctermfg = T.blue, style = { "bold" } },
		HopNextKey2 = { bg = bg, fg = C.teal, ctermfg = T.teal, style = { "bold", "italic" } },
		HopUnmatched = { bg = bg, fg = C.overlay0, ctermfg = T.overlay0 },
	}
end

return M
