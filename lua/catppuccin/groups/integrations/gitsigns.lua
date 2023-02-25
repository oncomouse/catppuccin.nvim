local M = {}

function M.get()
	return {
		GitSignsAdd = { fg = C.green, ctermfg = T.green }, -- diff mode: Added line |diff.txt|
		GitSignsChange = { fg = C.yellow, ctermfg = T.yellow }, -- diff mode: Changed line |diff.txt|
		GitSignsDelete = { fg = C.red, ctermfg = T.red }, -- diff mode: Deleted line |diff.txt|

		GitSignsAddPreview = O.transparent_background
				and { fg = C.green, ctermfg = T.green, bg = C.none, ctermbg = T.none }
			or { link = "DiffAdd" },
		GitSignsDeletePreview = O.transparent_background
				and { fg = C.red, ctermfg = T.red, bg = C.none, ctermbg = T.none }
			or { link = "DiffDelete" },
	}
end

return M
