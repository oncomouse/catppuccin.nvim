local M = {}

function M.get()
	return {
		BufferCurrent = { bg = C.surface1, ctermbg = T.surface1, fg = C.text, ctermfg = T.text },
		BufferCurrentIndex = { bg = C.surface1, ctermbg = T.surface1, fg = C.blue, ctermfg = T.blue },
		BufferCurrentMod = { bg = C.surface1, ctermbg = T.surface1, fg = C.yellow, ctermfg = T.yellow },
		BufferCurrentSign = { bg = C.surface1, ctermbg = T.surface1, fg = C.blue, ctermfg = T.blue },
		BufferCurrentTarget = { bg = C.surface1, ctermbg = T.surface1, fg = C.red, ctermfg = T.red },
		BufferVisible = { bg = C.mantle, ctermbg = T.mantle, fg = C.text, ctermfg = T.text },
		BufferVisibleIndex = { bg = C.mantle, ctermbg = T.mantle, fg = C.blue, ctermfg = T.blue },
		BufferVisibleMod = { bg = C.mantle, ctermbg = T.mantle, fg = C.yellow, ctermfg = T.yellow },
		BufferVisibleSign = { bg = C.mantle, ctermbg = T.mantle, fg = C.blue, ctermfg = T.blue },
		BufferVisibleTarget = { bg = C.mantle, ctermbg = T.mantle, fg = C.red, ctermfg = T.red },
		BufferInactive = { bg = C.mantle, ctermbg = T.mantle, fg = C.overlay0, ctermfg = T.overlay0 },
		BufferInactiveIndex = { bg = C.mantle, ctermbg = T.mantle, fg = C.overlay0, ctermfg = T.overlay0 },
		BufferInactiveMod = { bg = C.mantle, ctermbg = T.mantle, fg = C.yellow, ctermfg = T.yellow },
		BufferInactiveSign = { bg = C.mantle, ctermbg = T.mantle, fg = C.blue, ctermfg = T.blue },
		BufferInactiveTarget = { bg = C.mantle, ctermbg = T.mantle, fg = C.red, ctermfg = T.red },
		BufferTabpages = { bg = C.mantle, ctermbg = T.mantle, fg = C.none, ctermfg = T.none },
		BufferTabpage = { bg = C.mantle, ctermbg = T.mantle, fg = C.blue, ctermfg = T.blue },
	}
end

return M
