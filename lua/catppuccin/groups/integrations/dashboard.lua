local M = {}

function M.get()
	return {
		DashboardShortCut = { fg = C.pink, ctermfg = T.pink },
		DashboardHeader = { fg = C.blue, ctermfg = T.blue },
		DashboardCenter = { fg = C.green, ctermfg = T.green },
		DashboardFooter = { fg = C.yellow, ctermfg = T.yellow, style = { "italic" } },
	}
end

return M
