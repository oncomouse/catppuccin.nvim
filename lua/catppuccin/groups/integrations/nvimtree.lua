local M = {}

function M.get()
	return {
		NvimTreeFolderName = { fg = C.blue, ctermfg = T.blue },
		NvimTreeFolderIcon = { fg = C.blue, ctermfg = T.blue },
		NvimTreeNormal = {
			fg = C.text,
			ctermfg = T.text,
			bg = O.transparent_background and C.none or C.mantle,
			ctermbg = O.transparent_background and T.none or T.mantle,
		},
		NvimTreeOpenedFolderName = { fg = C.blue, ctermfg = T.blue },
		NvimTreeEmptyFolderName = { fg = C.blue, ctermfg = T.blue },
		NvimTreeIndentMarker = { fg = C.overlay0, ctermfg = T.overlay0 },
		NvimTreeWinSeparator = {
			fg = O.transparent_background and C.surface1 or C.base,
			ctermfg = O.transparent_background and T.surface1 or T.base,
			bg = O.transparent_background and C.none or C.base,
			ctermbg = O.transparent_background and T.none or T.base,
		},
		NvimTreeRootFolder = { fg = C.lavender, ctermfg = T.lavender, style = { "bold" } },
		NvimTreeSymlink = { fg = C.pink, ctermfg = T.pink },
		NvimTreeStatuslineNc = { fg = C.mantle, ctermfg = T.mantle, bg = C.mantle, ctermbg = T.mantle },
		NvimTreeGitDirty = { fg = C.yellow, ctermfg = T.yellow },
		NvimTreeGitNew = { fg = C.blue, ctermfg = T.blue },
		NvimTreeGitDeleted = { fg = C.red, ctermfg = T.red },
		NvimTreeSpecialFile = { fg = C.flamingo, ctermfg = T.flamingo },
		NvimTreeImageFile = { fg = C.text, ctermfg = T.text },
		NvimTreeOpenedFile = { fg = C.pink, ctermfg = T.pink },
	}
end

return M
