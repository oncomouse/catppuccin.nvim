local M = {}

function M.get()
	return {
		GitGutterAdd = { fg = C.green, ctermfg = T.green },
		GitGutterChange = { fg = C.yellow, ctermfg = T.yellow },
		GitGutterDelete = { fg = C.red, ctermfg = T.red },
	}
end

return M
