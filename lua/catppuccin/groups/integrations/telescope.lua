local M = {}

function M.get()
	return {
		TelescopeBorder = { fg = C.blue, ctermfg = T.blue },
		TelescopeSelectionCaret = { fg = C.flamingo, ctermfg = T.flamingo },
		TelescopeSelection = {
			fg = O.transparent_background and C.flamingo or C.text,
			bg = O.transparent_background and C.none or C.surface0,
			style = { "bold" },
		},
		TelescopeMatching = { fg = C.blue, ctermfg = T.blue },
		-- TelescopePromptPrefix = { bg = C.crust, ctermbg = T.crust },
		-- TelescopePromptNormal = { bg = C.crust, ctermbg = T.crust },
		-- TelescopeResultsNormal = { bg = C.mantle, ctermbg = T.mantle },
		-- TelescopePreviewNormal = { bg = C.crust, ctermbg = T.crust },
		-- TelescopePromptBorder = { bg = C.crust, ctermbg = T.crust, fg = C.crust, ctermfg = T.crust },
		-- TelescopeResultsBorder = { bg = C.mantle, ctermbg = T.mantle, fg = C.crust, ctermfg = T.crust },
		-- TelescopePreviewBorder = { bg = C.crust, ctermbg = T.crust, fg = C.crust, ctermfg = T.crust },
		-- TelescopePromptTitle = { fg = C.crust, ctermfg = T.crust },
		-- TelescopeResultsTitle = { fg = C.text, ctermfg = T.text },
		-- TelescopePreviewTitle = { fg = C.crust, ctermfg = T.crust },
	}
end

return M
