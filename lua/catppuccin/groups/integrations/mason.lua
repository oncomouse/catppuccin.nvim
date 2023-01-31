local M = {}

function M.get()
	local bg = O.transparent_background and C.none or C.lavender
	local fg = O.transparent_background and C.lavender or C.base

	local secondary_bg = O.transparent_background and C.none or C.blue
	local secondary_fg = O.transparent_background and C.blue or C.base

	local muted_bg = O.transparent_background and C.none or C.overlay0
	local muted_fg = O.transparent_background and C.overlay0 or C.base

	return {
		MasonHeader = { fg = fg, bg = bg, style = { "bold" } },
		MasonHeaderSecondary = { fg = secondary_fg, bg = secondary_bg, style = { "bold" } },

		MasonHighlight = { fg = C.green, ctermfg = T.green },
		MasonHighlightBlock = {
			bg = O.transparent_background and C.none or C.green,
			fg = O.transparent_background and C.green or C.base,
		},
		MasonHighlightBlockBold = { bg = secondary_bg, fg = secondary_fg, bold = true },

		MasonHighlightSecondary = { fg = C.mauve, ctermfg = T.mauve },
		MasonHighlightBlockSecondary = { fg = secondary_fg, bg = secondary_bg },
		MasonHighlightBlockBoldSecondary = { fg = fg, bg = bg, bold = true },

		MasonMuted = { fg = C.overlay0, ctermfg = T.overlay0 },
		MasonMutedBlock = { bg = muted_bg, fg = muted_fg },
		MasonMutedBlockBold = { bg = C.yellow, ctermbg = T.yellow, fg = C.base, ctermfg = T.base, bold = true },

		MasonError = { fg = C.red, ctermfg = T.red },

		MasonHeading = { fg = C.lavender, ctermfg = T.lavender, bold = true },
	}
end

return M
