local M = {}

function M.get()
	return {
		VimwikiLink = { fg = C.sky, ctermfg = T.sky, bg = C.none, ctermbg = T.none },
		VimwikiHeaderChar = { fg = C.grey, ctermfg = T.grey, bg = C.none, ctermbg = T.none },
		VimwikiHR = { fg = C.yellow, ctermfg = T.yellow, bg = C.none, ctermbg = T.none },
		VimwikiList = { fg = C.peach, ctermfg = T.peach, bg = C.none, ctermbg = T.none },
		VimwikiTag = { fg = C.peach, ctermfg = T.peach, bg = C.none, ctermbg = T.none },
		VimwikiMarkers = { fg = C.subtext0, ctermfg = T.subtext0, bg = C.none, ctermbg = T.none },
		VimwikiHeader1 = { fg = C.peach, ctermfg = T.peach, bg = C.none, ctermbg = T.none, style = { "bold" } },
		VimwikiHeader2 = { fg = C.green, ctermfg = T.green, bg = C.none, ctermbg = T.none, style = { "bold" } },
		VimwikiHeader3 = { fg = C.blue, ctermfg = T.blue, bg = C.none, ctermbg = T.none, style = { "bold" } },
		VimwikiHeader4 = { fg = C.sky, ctermfg = T.sky, bg = C.none, ctermbg = T.none, style = { "bold" } },
		VimwikiHeader5 = { fg = C.yellow, ctermfg = T.yellow, bg = C.none, ctermbg = T.none, style = { "bold" } },
		VimwikiHeader6 = { fg = C.mauve, ctermfg = T.mauve, bg = C.none, ctermbg = T.none, style = { "bold" } },
	}
end

return M
