local M = {}

function M.get()
	local transparent_background = require("catppuccin").options.transparent_background
	local bg_highlight = transparent_background and "NONE" or C.base

	local inactive_bg = transparent_background and "NONE" or C.mantle

	return {
		MiniCompletionActiveParameter = { style = { "underline" } },

		MiniCursorword = { style = { "underline" } },
		MiniCursorwordCurrent = { style = { "underline" } },

		MiniIndentscopeSymbol = { fg = C.text, ctermfg = T.text },
		MiniIndentscopePrefix = { style = { "nocombine" } }, -- Make it invisible

		MiniJump = { fg = C.overlay2, ctermfg = T.overlay2, bg = C.pink, ctermbg = T.pink },

		MiniJump2dSpot = { bg = C.base, ctermbg = T.base, fg = C.peach, ctermfg = T.peach, style = { "bold", "underline" } },

		MiniStarterCurrent = {},
		MiniStarterFooter = { fg = C.yellow, ctermfg = T.yellow, style = { "italic" } },
		MiniStarterHeader = { fg = C.blue, ctermfg = T.blue },
		MiniStarterInactive = { fg = C.surface2, ctermfg = T.surface2, style = O.styles.comments },
		MiniStarterItem = { fg = C.text, ctermfg = T.text },
		MiniStarterItemBullet = { fg = C.blue, ctermfg = T.blue },
		MiniStarterItemPrefix = { fg = C.pink, ctermfg = T.pink },
		MiniStarterSection = { fg = C.flamingo, ctermfg = T.flamingo },
		MiniStarterQuery = { fg = C.green, ctermfg = T.green },

		MiniStatuslineDevinfo = { fg = C.subtext1, ctermfg = T.subtext1, bg = C.surface1, ctermbg = T.surface1 },
		MiniStatuslineFileinfo = { fg = C.subtext1, ctermfg = T.subtext1, bg = C.surface1, ctermbg = T.surface1 },
		MiniStatuslineFilename = { fg = C.text, ctermfg = T.text, bg = C.mantle, ctermbg = T.mantle },
		MiniStatuslineInactive = { fg = C.blue, ctermfg = T.blue, bg = C.mantle, ctermbg = T.mantle },
		MiniStatuslineModeCommand = { fg = C.base, ctermfg = T.base, bg = C.peach, ctermbg = T.peach, style = { "bold" } },
		MiniStatuslineModeInsert = { fg = C.base, ctermfg = T.base, bg = C.green, ctermbg = T.green, style = { "bold" } },
		MiniStatuslineModeNormal = { fg = C.mantle, ctermfg = T.mantle, bg = C.blue, ctermbg = T.blue, style = { "bold" } },
		MiniStatuslineModeOther = { fg = C.base, ctermfg = T.base, bg = C.teal, ctermbg = T.teal, style = { "bold" } },
		MiniStatuslineModeReplace = { fg = C.base, ctermfg = T.base, bg = C.red, ctermbg = T.red, style = { "bold" } },
		MiniStatuslineModeVisual = { fg = C.base, ctermfg = T.base, bg = C.mauve, ctermbg = T.mauve, style = { "bold" } },

		MiniSurround = { bg = C.pink, ctermbg = T.pink, fg = C.surface1, ctermfg = T.surface1 },

		MiniTablineCurrent = { fg = C.text, ctermfg = T.text, bg = C.base, ctermbg = T.base, sp = C.red, style = { "bold", "italic", "underline" } },
		MiniTablineFill = { bg = bg_highlight },
		MiniTablineHidden = { fg = C.text, ctermfg = T.text, bg = inactive_bg },
		MiniTablineModifiedCurrent = { fg = C.red, ctermfg = T.red, bg = C.none, ctermbg = T.none, style = { "bold", "italic" } },
		MiniTablineModifiedHidden = { fg = C.red, ctermfg = T.red, bg = C.none, ctermbg = T.none },
		MiniTablineModifiedVisible = { fg = C.red, ctermfg = T.red, bg = C.none, ctermbg = T.none },
		MiniTablineTabpagesection = { fg = C.surface1, ctermfg = T.surface1, bg = C.base, ctermbg = T.base },
		MiniTablineVisible = { bg = C.none, ctermbg = T.none },

		MiniTestEmphasis = { style = { "bold" } },
		MiniTestFail = { fg = C.red, ctermfg = T.red, style = { "bold" } },
		MiniTestPass = { fg = C.green, ctermfg = T.green, style = { "bold" } },

		MiniTrailspace = { bg = C.red, ctermbg = T.red },
	}
end

return M
