local M = {}

function M.get()
	return {
		-- nvim-dap
		DapBreakpoint = { fg = C.red, ctermfg = T.red },
		DapBreakpointCondition = { fg = C.yellow, ctermfg = T.yellow },
		DapLogPoint = { fg = C.sky, ctermfg = T.sky },

		-- nvim-dap-ui
		DAPUIScope = { fg = C.sky, ctermfg = T.sky },
		DAPUIType = { fg = C.mauve, ctermfg = T.mauve },
		DAPUIValue = { fg = C.sky, ctermfg = T.sky },
		DAPUIVariable = { fg = C.text, ctermfg = T.text },
		DapUIModifiedValue = { fg = C.peach, ctermfg = T.peach },
		DapUIDecoration = { fg = C.sky, ctermfg = T.sky },
		DapUIThread = { fg = C.green, ctermfg = T.green },
		DapUIStoppedThread = { fg = C.sky, ctermfg = T.sky },
		DapUISource = { fg = C.lavender, ctermfg = T.lavender },
		DapUILineNumber = { fg = C.sky, ctermfg = T.sky },
		DapUIFloatBorder = { fg = C.sky, ctermfg = T.sky },

		DapUIWatchesEmpty = { fg = C.maroon, ctermfg = T.maroon },
		DapUIWatchesValue = { fg = C.green, ctermfg = T.green },
		DapUIWatchesError = { fg = C.maroon, ctermfg = T.maroon },

		DapUIBreakpointsPath = { fg = C.sky, ctermfg = T.sky },
		DapUIBreakpointsInfo = { fg = C.green, ctermfg = T.green },
		DapUIBreakpointsCurrentLine = { fg = C.green, ctermfg = T.green, style = { "bold" } },
		DapUIBreakpointsDisabledLine = { fg = C.gray0, ctermfg = T.gray0 },
	}
end

return M
