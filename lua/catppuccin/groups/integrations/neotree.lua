local M = {}

function M.get()
	local active_bg = O.transparent_background and C.none or C.mantle
	local inactive_bg = O.transparent_background and C.none or C.base
	return {
		NeoTreeDirectoryName = { fg = C.blue, ctermfg = T.blue },
		NeoTreeDirectoryIcon = { fg = C.blue, ctermfg = T.blue },
		NeoTreeNormal = { fg = C.text, ctermfg = T.text, bg = active_bg },
		NeoTreeExpander = { fg = C.overlay0, ctermfg = T.overlay0 },
		NeoTreeIndentMarker = { fg = C.overlay0, ctermfg = T.overlay0 },
		NeoTreeRootName = { fg = C.blue, ctermfg = T.blue, style = { "bold" } },
		NeoTreeSymbolicLinkTarget = { fg = C.pink, ctermfg = T.pink },

		NeoTreeGitAdded = { fg = C.green, ctermfg = T.green },
		NeoTreeGitConflict = { fg = C.red, ctermfg = T.red },
		NeoTreeGitDeleted = { fg = C.red, ctermfg = T.red },
		NeoTreeGitIgnored = { fg = C.overlay0, ctermfg = T.overlay0 },
		NeoTreeGitModified = { fg = C.yellow, ctermfg = T.yellow },
		NeoTreeGitUnstaged = { fg = C.red, ctermfg = T.red },
		NeoTreeGitUntracked = { fg = C.blue, ctermfg = T.blue },
		NeoTreeGitStaged = { fg = C.green, ctermfg = T.green },

		NeoTreeFloatBorder = { fg = C.blue, ctermfg = T.blue },
		NeoTreeFloatTitle = { fg = C.subtext0, ctermfg = T.subtext0 },

		NeoTreeFileNameOpened = { fg = C.pink, ctermfg = T.pink },
		NeoTreeDimText = { fg = C.overlay1, ctermfg = T.overlay1 },
		NeoTreeFilterTerm = { fg = C.green, ctermfg = T.green, style = { "bold" } },
		NeoTreeTabActive = { bg = active_bg, fg = C.lavender, ctermfg = T.lavender, style = { "bold" } },
		NeoTreeTabInactive = { bg = inactive_bg, fg = C.overlay0, ctermfg = T.overlay0 },
		NeoTreeTabSeparatorActive = { fg = active_bg, bg = active_bg },
		NeoTreeTabSeparatorInactive = { fg = inactive_bg, bg = inactive_bg },
		NeoTreeVertSplit = { fg = C.base, ctermfg = T.base, bg = inactive_bg },
		NeoTreeStatusLineNC = { fg = C.mantle, ctermfg = T.mantle, bg = C.mantle, ctermbg = T.mantle },
	}
end

return M
