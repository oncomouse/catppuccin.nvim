local M = {}

function M.get()
	return {
		tkLink = { fg = C.blue, ctermfg = T.blue },
		tkBrackets = { fg = C.pink, ctermfg = T.pink },
		tkTag = { fg = C.sky, ctermfg = T.sky },
	}
end

return M
