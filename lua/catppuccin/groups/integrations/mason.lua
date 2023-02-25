local M = {}

function M.get()
	local bg = O.transparent_background and C.none or C.lavender
	local fg = O.transparent_background and C.lavender or C.base

	local secondary_bg = O.transparent_background and C.none or C.blue
	local secondary_fg = O.transparent_background and C.blue or C.base

	local muted_bg = O.transparent_background and C.none or C.overlay0
	local muted_fg = O.transparent_background and C.overlay0 or C.base

	local cterm_bg = O.transparent_background and T.none or T.lavender
	local cterm_fg = O.transparent_background and T.lavender or T.base

	local cterm_secondary_bg = O.transparent_background and T.none or T.blue
	local cterm_secondary_fg = O.transparent_background and T.blue or T.base

	local cterm_muted_bg = O.transparent_background and T.none or T.overlay0
	local cterm_muted_fg = O.transparent_background and T.overlay0 or T.base

	return {
		MasonHeader = { fg = fg, ctermfg = cterm_fg, bg = bg, ctermbg = cterm_bg, style = { "bold" } },
		MasonHeaderSecondary = {
			fg = secondary_fg,
			ctermfg = cterm_secondary_fg,
			bg = secondary_bg,
			ctermbg = cterm_secondary_bg,
			style = { "bold" },
		},

		MasonHighlight = { fg = C.green, ctermfg = T.green },
		MasonHighlightBlock = {
			bg = O.transparent_background and C.none or C.green,
			fg = O.transparent_background and C.green or C.base,
			ctermbg = O.transparent_background and T.none or T.green,
			ctermfg = O.transparent_background and T.green or T.base,
		},
		MasonHighlightBlockBold = {
			bg = secondary_bg,
			ctermbg = cterm_secondary_bg,
			fg = secondary_fg,
			ctermfg = cterm_secondary_fg,
			bold = true,
		},

		MasonHighlightSecondary = { fg = C.mauve, ctermfg = T.mauve },
		MasonHighlightBlockSecondary = {
			fg = secondary_fg,
			ctermfg = cterm_secondary_fg,
			bg = secondary_bg,
			ctermbg = cterm_secondary_bg,
		},
		MasonHighlightBlockBoldSecondary = { fg = fg, ctermfg = cterm_fg, bg = bg, ctermbg = cterm_bg, bold = true },

		MasonMuted = { fg = C.overlay0, ctermfg = T.overlay0 },
		MasonMutedBlock = { bg = muted_bg, ctermbg = cterm_muted_bg, fg = muted_fg, ctermfg = cterm_muted_fg },
		MasonMutedBlockBold = { bg = C.yellow, ctermbg = T.yellow, fg = C.base, ctermfg = T.base, bold = true },

		MasonError = { fg = C.red, ctermfg = T.red },

		MasonHeading = { fg = C.lavender, ctermfg = T.lavender, bold = true },
	}
end

return M
