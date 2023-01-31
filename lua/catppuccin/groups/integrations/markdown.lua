local M = {}

function M.get()
	return {
		markdownHeadingDelimiter = { fg = C.peach, ctermfg = T.peach, style = { "bold" } },
		markdownCode = { fg = C.flamingo, ctermfg = T.flamingo },
		markdownCodeBlock = { fg = C.flamingo, ctermfg = T.flamingo },
		markdownLinkText = { fg = C.blue, ctermfg = T.blue, style = { "underline" } },
		markdownH1 = { fg = C.lavender, ctermfg = T.lavender },
		markdownH2 = { fg = C.mauve, ctermfg = T.mauve },
		markdownH3 = { fg = C.green, ctermfg = T.green },
		markdownH4 = { fg = C.yellow, ctermfg = T.yellow },
		markdownH5 = { fg = C.pink, ctermfg = T.pink },
		markdownH6 = { fg = C.teal, ctermfg = T.teal },
	}
end

return M
